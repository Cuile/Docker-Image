FROM python:3.9.12-buster

# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

# 升级自带安装工具
RUN pip install --no-cache-dir --upgrade pip \
	&& pip install --no-cache-dir --upgrade setuptools

# 安装Python库
RUN pip install --no-cache-dir \
    # Django库
	Django==3.2.13

# 设置shell
RUN echo "export PS1='[\A \u@\H \w]\\$ '" >> $HOME/.bashrc \
	&& echo "alias ll='ls -lh --color'" >> $HOME/.bashrc
CMD ["/bin/bash"]