# Python常用开发环境

## 镜像说明

基于python:3.7镜像

修改系统时区，为北京时间 CTS +8

集成了常用且很有用的Python库。

修改提示符，显示当前时间、路径

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

### Python调试工具

- better-exceptions = latest
- PySnooper = latest

### 网络请求

- requests = 2.21.0

## 使用方法

```bash
docker run --rm -it cuile/python-dev-env:latest
```
