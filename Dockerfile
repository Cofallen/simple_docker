# 使用较新版本的 Ubuntu 作为基础镜像
# FROM ubuntu:20.04
FROM ubuntu

# 设置工作目录为 /app
WORKDIR /app

# 将当前目录中的所有文件复制到工作目录中
COPY . .

# 赋予 start.sh 可执行权限
RUN chmod +x start.sh

# 安装必要的软件包和编译器
RUN apt-get update && apt-get install -y \
    gdb \
    gcc \
    g++

# 定义容器启动时要运行的命令
CMD [ "./start.sh" ]
