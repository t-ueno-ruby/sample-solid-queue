# Solid Queueを試すためのサンプルリポジトリ(完成形)


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


### コンテナのビルド、DB作成、アプリケーションの起動

コンテナをビルド

~~~bash
docker compose build --no-cache
~~~

DB作成

~~~bash
docker compose run --rm web rails db:create db:migrate
~~~

アプリケーションの起動

~~~bash
docker compose up
~~~


## 動作確認

<http://localhost:3000>にアクセスするとRailsのトップページが表示されます。
<http://localhost:3000/posts>にアクセスすると完成したアプリケーションの動作確認が可能です。
