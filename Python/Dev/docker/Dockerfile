ARG IMAGE=python

FROM cuile/${IMAGE}_base

# 安装Python库
COPY ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# 设置工作目录
RUN mkdir /usr/app
WORKDIR /usr/app

CMD ["/bin/bash"]