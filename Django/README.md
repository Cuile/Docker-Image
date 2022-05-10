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
# 构建镜像
$ docker build --compress -f Dockerfile -t django-3.2.13 .

# 启动镜像
$ docker compose -f ./start.yml up -d
$ docker compose -f ./start.yml down

# 创建项目
$ docker exec -it my-django-app django-admin.py startproject mysite
# 启动项目
$ docker exec -it -d my-django-app python ./mysite/manage.py runserver 0.0.0.0:80
```
