FROM python:3.7

# 修改时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# 安装Python库
RUN pip install --no-cache-dir --upgrade pip \
	# 打包可执行文件库
	&& pip install --no-cache-dir PyInstaller==3.4 \
	# 程序进度条库
	&& pip install --no-cache-dir progressbar==2.5\ 
	# 数据库连接库
	&& pip install --no-cache-dir mysql-connector-python==8.0.12 \
	&& pip install --no-cache-dir psycopg2==2.8.3 \
	# 配置文件读取
	&& pip install --no-cache-dir pyhocon==0.3.50 \
	# 升级自带安装工具
	&& pip install --no-cache-dir --upgrade setuptools
# 设置shell
RUN echo "export PS1='[\A \u@\H \w]\\$ '" >> $HOME/.bashrc \
	&& echo "alias ll='ls -lh --color'" >> $HOME/.bashrc

CMD ["/bin/bash"]