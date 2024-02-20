ARG IMAGE=python
ARG TAG=3.9-buster

FROM ${IMAGE}:${TAG}

LABEL Author="Cuile" Email="i@cuile.com" Version=${IMAGE}_${TAG}

# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone
# 设置shell
RUN echo "PS1='\[\e[36;40m\][\D{%Y-%m-%d} \A] \[\e[0m\] \[\e[35;40m\]\w\[\e[0m\]\n\[\e[33;40m\][\u@\H]\[\e[0m\] \\$ '" >> $HOME/.bashrc && \
	echo "alias ll='ls -lh --color'" >> $HOME/.bashrc
# 升级自带安装工具
# pip换国内清华的源
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
	pip install --no-cache-dir --upgrade pip && \
	pip install --no-cache-dir --upgrade setuptools

CMD [""]