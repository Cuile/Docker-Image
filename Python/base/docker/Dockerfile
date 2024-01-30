FROM python:3.11-buster

MAINTAINER Cuile
MAINTAINER i@cuile.com


# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

# 设置shell
RUN echo -e "export PS1='\[\e[36;40m\][\D{%Y-%m-%d} \A] \[\e[0m\] \[\e[35;40m\]\w\[\e[0m\]\n\[\e[33;40m\][\u@\H]\[\e[0m\] \\$ '" >> $HOME/.bash_profile && \
	echo -e "alias ll='ls -lh --color'" >> $HOME/.bash_profile

# 升级自带安装工具
RUN pip install --no-cache-dir --upgrade pip && \
	pip install --no-cache-dir --upgrade setuptools


CMD ["/bin/bash"]
