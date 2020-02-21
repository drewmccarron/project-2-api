#!/bin/bash

curl "http://localhost:4741/loadouts" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
