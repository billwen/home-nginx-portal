if [[ ! -f /var/www/certbot ]]; then
    mkdir -p /var/www/certbot
fi
certbot certonly --agree-tos --domains "*.guludoc.com" --email "gang.wen@gmail.com" --expand --noninteractive --nginx

if [[ -f "${LETSENCRYPT_DIR:-/etc/letsencrypt}/live/$DOMAIN/privkey.pem" ]]; then
    cp "${LETSENCRYPT_DIR:-/etc/letsencrypt}/live/$DOMAIN/privkey.pem" /usr/share/nginx/certificates/privkey.pem
    cp "${LETSENCRYPT_DIR:-/etc/letsencrypt}/live/$DOMAIN/fullchain.pem" /usr/share/nginx/certificates/fullchain.pem
fi