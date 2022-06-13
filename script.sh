#!/bin/bash
TOKEN=$(grep token ~/.terraformrc | cut -f 2 -d \")
echo $TOKEN 1>&2
curl --header "Authorization: Bearer $TOKEN" --header "Content-Type: application/vnd.api+json" https://app.terraform.io/api/v2/workspaces/ws-eMs8keix7KspYjZW/current-state-version-outputs | jq . 1>&2
exit 1
