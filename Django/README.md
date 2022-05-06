# Django开发环境

## 1. 镜像说明

- 基于python:3.9.12-buster镜像
- 集成了Django库。

## 2. 系统说明

- 修改系统时区，为北京时间 CTS +8
- 修改提示符，显示当前时间、路径

## 3. 可用库说明

### 3.1. 自带库

- pip = 19.3.1
- setuptools = 41.6.0

### 3.2. Django

- Django==3.2.13(LTS)


## 使用方法

```bash
docker run --rm -it cuile/python-dev-env:latest
```
