# Solid Queueを試すためのサンプルリポジトリ


## 目次


## 必要要件

- Dockerのインストール

動作確認はmacOSで行いました。


## 環境構築

完成形のコードは[solid-queue-mysql8](https://github.com/t-ueno-ruby/sample-solid-queue/tree/solid-queue-mysql8)ブランチをご確認ください。
実装手順は記事で解説しています。


### リポジトリをダウンロード

~~~bash
git clone git@github.com:t-ueno-ruby/sample-solid-queue.git
~~~


### コンテナをビルド、バックグラウンドで起動

コンテナをビルド

~~~bash
docker compose build --no-cache
~~~

コンテナをバックグラウンドで起動

~~~bash
docker compose up -d
~~~


### コンテナの起動確認

Railsアプリケーションが作成されていたいためwebコンテナはのSTATUSは`Restarting`で問題ありません。

~~~bash
docker compose up -d
# NAME                       IMAGE                    COMMAND                   SERVICE   CREATED          STATUS                         PORTS
# sample-solid-queue-db-1    mysql:8.0.35             "docker-entrypoint.s…"   db        18 seconds ago   Up 18 seconds                  0.0.0.0:3306->3306/tcp, 33060/tcp
# sample-solid-queue-web-1   sample-solid-queue-web   "bash -c 'rm -f tmp/…"   web       18 seconds ago   Restarting (0) 2 seconds ago
~~~
