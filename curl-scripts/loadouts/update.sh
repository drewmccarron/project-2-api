# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/loadouts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "loadout": {
      "armor_slot": "'"${ARMOR}"'",
      "weapon_slot": "'"${WEAPON}"'",
      "trinket_slot": "'"${TRINKET}"'"
    }
  }'

  echo
