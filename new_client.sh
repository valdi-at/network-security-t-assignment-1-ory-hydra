#!/bin/sh

curl -X POST http://localhost:4445/admin/clients \
  -H "Content-Type: application/json" \
  -d '{
    "client_id": "ed99ae3536089493733284ec19d87bd68171291cfd6323c6ea41923418e55cf6",
    "grant_types": [
      "authorization_code",
      "refresh_token"
    ],
    "redirect_uris": [
      "http://localhost:3000/callback"
    ],
    "response_types": [
      "code",
      "id_token"
    ],
    "scope": "openid email profile offline",
    "token_endpoint_auth_method": "client_secret_post",
    "client_secret": "cf66c806bc755f91df4ab93a5135df1aefeed6f98f1d202ccda9e41d15f43d81962f88376f4f6f478f261bb4ae2d82cd147ed365ca4253253ffeacff6938475a"
  }'