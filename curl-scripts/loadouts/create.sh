#!/bin/bash

curl "http://localhost:4741/loadouts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "loadout": {
      "loadout_name": "'"${NAME}"'",
      "armor_slot": "'"${ARMOR}"'",
      "weapon_slot": "'"${WEAPON}"'",
      "trinket_slot": "'"${TRINKET}"'"
    }
  }'

echo
