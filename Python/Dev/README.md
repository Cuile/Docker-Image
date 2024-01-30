

# 使用方法
```bash
IMAGE="python"
PROXY="https://github.jobcher.com/gh/" && \
docker build --build-arg IMAGE=${IMAGE} --tag cuile/${IMAGE}:base \
            ${PROXY}https://github.com/Cuile/Docker-Image.git#:Python/base/docker && \
docker build --build-arg IMAGE=${IMAGE} --tag cuile/${IMAGE}:Dev \
            ${PROXY}https://github.com/Cuile/Docker-Image.git#:Python/Dev/docker
```
```bash
docker run --rm -it cuile/python-dev-env:latest
```
