#!/bin/bash
SITES=("https://google.com" "https://github.com" "https://httpbin.org/status/404")

for SITE in "${SITES[@]}"; do
  STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$SITE")
  echo "Сайт: $SITE | Статус: $STATUS"
done

