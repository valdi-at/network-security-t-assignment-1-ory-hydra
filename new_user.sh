#!/bin/sh

curl -vX POST http://localhost:4434/admin/identities \
  -H "Content-Type: application/json" \
  -d '{
    "schema_id": "default",
    "traits": {
      "email": "shiny@shinyshoe.net",
      "username": "shiny"
    },
    "credentials": {
      "password": {
        "config": {
          "password": "secret"
        }
      }
    }
  }'