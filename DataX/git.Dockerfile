FROM centos:7

# set timezome
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezome

RUN yum -y update \ 
    && yum install -y git \
    && yum install -y java-1.8.0*x86_64 \
    && yum install -y maven \
    && yum clean all

# 安装DataX
RUN cd ~ \
    && git clone https://github.com/alibaba/DataX.git \
    && cd DataX \
    && mvn -U clean package assembly:assembly -Dmaven.test.skip=true