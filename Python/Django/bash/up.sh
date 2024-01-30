# 启动 Django 镜像
docker compose -f ./start.yml up -d \
    && bash run_server.sh
