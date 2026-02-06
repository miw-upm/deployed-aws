
### 1. Emitir certificado, solo una vez
```bash
docker run --rm -v /opt/letsencrypt/etc:/etc/letsencrypt -v /opt/letsencrypt/www:/var/www/certbot certbot/certbot certonly --webroot -w /var/www/certbot -d lightsail.miwupm.es --email TU_EMAIL@DOMINIO --agree-tos --no-eff-email
```

### 2. Verificar
```bash
curl -I https://lightsail.miwupm.es
```