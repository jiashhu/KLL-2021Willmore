# 继承官方 NGSolve 镜像
FROM ngsxfem/ngsxfem

# 安装额外的 Python 包
RUN pip install --no-cache-dir sympy tqdm pytz
