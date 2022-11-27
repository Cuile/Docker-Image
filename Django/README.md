# Django开发环境

## 1. 镜像说明

- 基于python:3.11.0-buster镜像

## 2. 系统说明

- 修改系统时区，为北京时间 CTS +8
- 修改提示符，显示当前时间、路径

### 2.1. Django库

- Django==3.2.13(LTS)
- django-simpleui==2022.11.30

## 3. 使用方法

```bash
# 启动镜像
$ bash up.sh

# 启动Django
$ bash run_server.sh

# 调试项目
$ bash login_server.sh

# 关闭镜像
$ bash down.sh
```

详细内容请访问[这里](https://blog.cuile.com/series/django/)