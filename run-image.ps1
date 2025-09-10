# 镜像名字
$IMAGE_NAME = "my-ngsxfem"

# 如果第一个参数是 "build"，则构建镜像
if ($args.Length -ge 1 -and $args[0] -eq "build") {
    Write-Host "Building Docker image $IMAGE_NAME..."
    docker build -t $IMAGE_NAME .
}

# 启动容器
Write-Host "Running Docker container from image $IMAGE_NAME..."
docker run -it --rm -p 8888:8888 -v "${PWD}:/home/jovyan/work" `
    -e PYTHONPATH="/home/jovyan/work/ngs-esfem:$env:PYTHONPATH" $IMAGE_NAME
