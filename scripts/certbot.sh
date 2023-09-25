if [[ ! -f /var/www/certbot ]]; then
    mkdir -p /var/www/certbot
fi

certbot certonly --agree-tos --domains "*.guludoc.com" --email "gang.wen@gmail.com" --expand --noninteractive --nginx

if [[ -f "/etc/letsencrypt/live/guludoc.com/privkey.pem" ]]; then
    cp "/etc/letsencrypt/live/guludoc.com/privkey.pem" /usr/share/nginx/certificates/privkey.pem
    cp "/etc/letsencrypt/live/guludoc.com/fullchain.pem" /usr/share/nginx/certificates/fullchain.pem
fi