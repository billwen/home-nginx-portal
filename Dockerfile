FROM nginx:latest
LABEL maintainer="Gang Wen (gang.wen@gmail.com)"

COPY ./nginx_conf /etc/nginx
COPY ./www /usr/share/nginx/html

EXPOSE 80 443
VOLUME ["/etc/letencrypt"]

CMD ["nginx", "-g", "daemon off;"]
