# 使用方法
```bash
# 构建镜像
# IMAGE 可选 python or pypy
$ IMAGE="pypy" && \
    # PROXY 可根据实际可用性进行修改
    PROXY="https://github.jobcher.com/gh/" && \
    docker build --build-arg IMAGE=${IMAGE} --tag cuile/${IMAGE}:base \
            ${PROXY}https://github.com/Cuile/Docker-Image.git#:Python/base/docker && \
    docker build --build-arg IMAGE=${IMAGE} --tag cuile/${IMAGE}:Dev \
            ${PROXY}https://github.com/Cuile/Docker-Image.git#:Python/Dev/docker

# 登录镜像
$ docker run --rm -it cuile/${IMAGE}:Dev
```
