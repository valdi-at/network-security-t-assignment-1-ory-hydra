#!/bin/sh
set -e

while :; do
    printf "Enter Identity Provider (Kratos) Server URI:"
    IFS= read -r KRATOS_SERVER_URI

    if [ -n "$KRATOS_SERVER_URI" ]; then
        break
    fi
done

while :; do
    printf "Enter Redirect URI: "
    IFS= read -r REDIRECT_URI

    if [ -n "$REDIRECT_URI" ]; then
        break
    fi

    printf "Client Secret cannot be empty. Try again.\n"
done

printf "Enter Client ID (random if blank): "
read -r CLIENT_ID

printf "Enter Client Secret (random if blank): "
read -r CLIENT_SECRET

if [ -z "$CLIENT_ID" ]; then
    CLIENT_ID=$(openssl rand -hex 16)
fi

if [ -z "$CLIENT_SECRET" ]; then
    CLIENT_SECRET=$(openssl rand -hex 32)
fi

curl -X POST "$KRATOS_SERVER_URI/admin/clients" \
  -H "Content-Type: application/json" \
  -d "{
    \"client_id\": \"${CLIENT_ID}\",
    \"grant_types\": [
      \"authorization_code\",
      \"refresh_token\"
    ],
    \"redirect_uris\": [
      \"${REDIRECT_URI}\"
    ],
    \"response_types\": [
      \"code\",
      \"id_token\"
    ],
    \"scope\": \"openid email profile offline\",
    \"token_endpoint_auth_method\": \"client_secret_post\",
    \"client_secret\": \"${CLIENT_SECRET}\"
  }"

echo "Client ID: $CLIENT_ID"
echo "Client Secret: $CLIENT_SECRET"
