## Uruchomienie


docker run -p 8080:80 docker.io/mrbadd/nginx-micro-web:latest


### albo build przypięty do konkretnego commita:
docker run -p 8080:80 docker.io/mrbadd/nginx-micro-web:<TAG_SHA>

## CI/CD

 **Pipeline:** login do Docker Hub → build obrazu → push `:<SHA>` → (na `main`) tag `:latest`.

**Ostatni run GitHub Actions:**  [![Build and Push to DockerHub](https://github.com/KrystianOstr/nginx-docker-gha/actions/workflows/docker-web.yaml/badge.svg)](https://github.com/KrystianOstr/nginx-docker-gha/actions/workflows/docker-web.yaml)

**Obraz w Docker Hub:** [mrbadd/nginx-micro-web – tags](https://hub.docker.com/r/mrbadd/nginx-micro-web/tags)

**Healthcheck:** Dostępny na /health
