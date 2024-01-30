# Python基础镜像

## 1. 镜像说明
- 修改系统时区，为北京时间 CTS +8
- 修改提示符，显示当前时间、路径
- 升级 pip, setuptools 到最新版本

## 2. 版本说明
- python
    - 基于 python:3.9-buster
    - 适用于日常使用环境
- pypy
    - 基于 pypy:3.9-buster
    - 适用于纯python编程、WEB环境、高并发、高负载

## 3. 使用方法
### docker CLI
```bash
# 构建镜像
# IMAGE 可选 python or pypy
# PROXY 可根据实际可用性进行修改
$ export IMAGE="python" PROXY="https://github.jobcher.com/gh/"
$ docker build --build-arg IMAGE=${IMAGE} --tag cuile/${IMAGE}:base ${PROXY}https://github.com/Cuile/Docker-Image.git#:Python/base/docker
# 登录镜像
$ docker run --rm -it cuile/${IMAGE}:Dev
```

### docker compose
```ini
# .env

# PROXY 可根据实际可用性进行修改
PROXY=https://github.jobcher.com/gh/
# IMAGE 可选 python or pypy
IMAGE=pypy
```
```yml
# start.yml

version: "3.7"
services:
  python-env:
    image: cuile/${IMAGE}:base
    container_name: culie/${IMAGE}:dev-env
    build: 
      context: ${PROXY}https://github.com/Cuile/Docker-Image.git#:Python/base/docker
      args:
        - IMAGE=${IMAGE}
    volumes:
      - ../src:/root/src/:ro
      - ../data:/root/data/:rw
      - ../bin:/root/bin/:rw
      - ../build:/root/build/:rw
    working_dir:  /root/src/
```
```bash
#!/bin/bash

# start.sh
docker compose -f ../docker/start.yml run --rm python-env
```