# Python-Dev-Env
Python常用开发环境

## 镜像说明
修改了系统时区，默认为北京时间 CTS +8

集成了一些平时常用，且很有用的Python库。

默认提示符，会显示当前时间、路径

## 可用库说明
### 系统库
- pip = latest
- setuptools = latest

### 打包可执行文件
- PyInstaller = 3.4

### 程序执进度条
- progressbar = 2.5

### 数据库连接
- mysql-connector-python = 8.0.12
- psycopg2 = 2.8.3

### 读取配置文件
- pyhocon = 0.3.50

### PyPi发布工具
- travis-encrypt = latest
- twine = latest

## 使用方法
```bash
docker run --rm -it python-dev-env:latest
```