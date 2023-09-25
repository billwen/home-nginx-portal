# home-nginx-portal
My nginx home server

# docker-compose.yml
```yaml

```

# Setup
## 1. Copy nginx configuration
[自建本地 docker registry 简易教程](https://amefs.net/archives/2396.html)
```bash
mkdir tmp
docker run --name tmp-nginx-container -d nginx:latest
docker cp tmp-nginx-container:/etc/nginx ./tmp
docker rm -f tmp-nginx-container

docker pull ubuntu
docker image tag ubuntu 192.168.50.8:15000/guludoc/ubuntu
docker push 192.168.50.8:15000/guludoc/ubuntu
```

