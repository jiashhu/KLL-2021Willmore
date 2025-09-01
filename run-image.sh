#!/bin/bash

# 镜像名字
IMAGE_NAME="my-ngsxfem"

# 如果第一个参数是 "build"，则构建镜像
if [ "$1" == "build" ]; then
    echo "Building Docker image ${IMAGE_NAME}..."
    docker build -t $IMAGE_NAME .
fi

# 启动容器
echo "Running Docker container from image ${IMAGE_NAME}..."
docker run -it --rm -p 8888:8888 -v "$(pwd)":/home/jovyan/work $IMAGE_NAME
