FROM centos:7

# set timezome
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezome

RUN yum -y update \ 
    && yum install -y wget \
    && yum install -y java-1.8.0*x86_64 \
    && yum clean all

# 安装DataX
RUN cd ~ \
    && wget http://datax-opensource.oss-cn-hangzhou.aliyuncs.com/datax.tar.gz \
    && tar -zxvf datax.tar.gz \
    && rm -f datax.tar.gz