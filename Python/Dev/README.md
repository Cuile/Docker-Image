```bash
docker build --build-arg IMAGE=${IMAGE} --tag cuile/${IMAGE}:Dev \
            ${PROXY}https://github.com/Cuile/Docker-Image.git#:Python/Dev/docker
```