FROM ubuntu
WORKDIR /srv

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    apt-get update && apt-get upgrade -y --no-install-recommends && \
    apt-get install openjdk-17-jdk mongodb -y --no-install-recommends && \
    apt-get autoclean && rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/apt/lists/* && \
    mkdir -p /srv/data/db /srv/log
