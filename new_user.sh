#!/bin/sh
set -e

while :; do
    printf "Enter Oauth2 Provider (Hydra Admin) Server URI: "
    IFS= read -r HYDRA_SERVER_URI

    if [ -n "$HYDRA_SERVER_URI" ]; then
        break
    fi
done

while :; do
    printf "Enter Username: "
    IFS= read -r USERNAME

    if [ -n "$USERNAME" ]; then
        break
    fi

    printf "Username cannot be empty. Try again.\n"
done

while :; do
    printf "Enter Password: "
    IFS= read -r PASSWORD

    if [ -n "$PASSWORD" ]; then
        break
    fi

    printf "Password cannot be empty. Try again.\n"
done

echo curl -vX POST "$HYDRA_SERVER_URI/admin/identities" \
  -H "Content-Type: application/json" \
  -d "{
    \"schema_id\": \"default\",
    \"traits\": {
      \"email\": \"$USERNAME\",
      \"username\": \"shiny\"
    },
    \"credentials\": {
      \"password\": {
        \"config\": {
          \"password\": \"$PASSWORD\"
        }
      }
    }
  }"