FROM python:3.11.0-buster

# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone
# 设置shell
RUN echo "export PS1='[\A \u@\H \w]\\$ '" >> $HOME/.bashrc \
	&& echo "alias ll='ls -lh --color'" >> $HOME/.bashrc

# pip换国内清华的源
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 安装Python库
COPY ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# 设置工作目录
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

CMD ["/bin/bash"]