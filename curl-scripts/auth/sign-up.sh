#!/bin/bash

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'",
      "character_name": "'"${CHARACTER}"'",
      "equipped_armor_slot": "'"${ARMOR}"'",
      "equipped_weapon_slot": "'"${WEAPON}"'",
      "equipped_trinket_slot": "'"${TRINKET}"'"
    }
  }'

echo
