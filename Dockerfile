FROM nginx:latest
LABEL maintainer="Gang Wen (gang.wen@gmail.com)"

COPY ./letsencrypt /etc/letsencrypt
RUN chmod 400 /etc/letsencrypt/live/guludoc.com/priv*.pem
COPY ./nginx_conf /etc/nginx
COPY ./www /usr/share/nginx/html

EXPOSE 80 443 5000 5001

ENTRYPOINT ["nginx", "-g", "daemon off;"]
