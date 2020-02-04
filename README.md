# Python常用开发环境

## 1. 镜像说明

- 基于python:3.7镜像
- 集成了常用且很有用的Python库。

## 2. 系统说明

- 修改系统时区，为北京时间 CTS +8
- 修改提示符，显示当前时间、路径

## 3. 可用库说明

### 3.1. 自带库

- pip = 19.3.1
- setuptools = 41.6.0

### 3.2. 程序执进度条

- progressbar = 2.5

### 3.3. 数据库连接库

- mysql-connector-python = 8.0.12
- psycopg2 = 2.8.3

### 3.4. 网络请求库

- requests = 2.21.0

### 3.5. 配置文件读取库

- pyhocon = 0.3.50

### 3.6. Python调试工具

- better-exceptions = 0.2.2
- PySnooper = 0.3.0

### 3.7. 代码美化工具

- black = 19.10b0

### 3.8. PyPi发布工具

- travis-encrypt = 1.3.1
- twine = 3.1.1

### 3.9. 打包可执行文件

- PyInstaller = 3.4

## 使用方法

```bash
docker run --rm -it cuile/python-dev-env:latest
```
