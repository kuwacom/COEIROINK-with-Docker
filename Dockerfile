# cudaインストール済みのベースイメージ
FROM nvidia/cuda:11.8.0-base-ubuntu20.04

# COEIOINKが 172.0.0.1 でしかホストできないためプロキシを入れる
RUN apt-get update && \
    apt-get install -y nginx

# COEIROINKのengineのみコピー
COPY ./COEIROINK_LINUX_GPU/engine /app/engine
COPY ./run.sh /app/run.sh
WORKDIR /app

# Nginxの設定ファイルをコピー
COPY server.conf /etc/nginx/sites-enabled/default

WORKDIR /app
CMD ["bash", "run.sh"]
