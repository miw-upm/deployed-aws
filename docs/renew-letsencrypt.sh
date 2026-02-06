#!/usr/bin/env bash
set -euo pipefail

docker run --rm \
  -v /opt/letsencrypt/etc:/etc/letsencrypt \
  -v /opt/letsencrypt/www:/var/www/certbot \
  certbot/certbot renew --webroot -w /var/www/certbot --quiet

docker exec nginx-gateway nginx -s reload || true
