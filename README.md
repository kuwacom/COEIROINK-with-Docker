# What Is This
COEIROINKをDocker上で動作できるようにしたイメージ

# How To Use
現在は、GPUで動作するバージョンのイメージしかありません。

CPUバージョンも追加予定です。

## 手順
まずは、[COEIROINK公式サイト](https://coeiroink.com/download)より、本体及び利用したいモデルをダウンロードします。

本体を展開後、中にある`speaker_info`というフォルダを、`docker-compose.yml`と同じ階層へ(このプロジェクトのrootパス)コピーもしくは移動をします。

追加で入れたいモデルがある場合は、`speaker_info`ディレクトリ内に入れてください。

あとは以下のようなコマンドで実行可能です。
> GPU
```bash
docker run --rm --gpus all -p 8080:80 -v ./speaker_info:/app/speaker_info kuwacom/coeiroink:gpu-COEIROINK-2.5.1
```

Docker Composeを利用して利用することも可能です。
```bash
docker compose up -d
```

利用する場合は、コンテナ内の`/app/speaker_info`パスへ、`speaker_info`をつなげてください。