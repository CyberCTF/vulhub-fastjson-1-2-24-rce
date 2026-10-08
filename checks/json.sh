#!/bin/sh
# The application parses a posted JSON body (with Fastjson) and answers with the parsed object.
set -e
curl -fsS -H 'Content-Type: application/json' -d '{"name":"isoloom","age":25}' http://web:8090/ | grep -q '"name":"isoloom"'
