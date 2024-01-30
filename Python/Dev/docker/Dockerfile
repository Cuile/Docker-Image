ARG IMAGE=python

FROM cuile/${IMAGE}:base

# 安装Python库
COPY ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# 设置工作目录
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

CMD ["/bin/bash"]