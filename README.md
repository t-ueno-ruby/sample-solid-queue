# Solid Queueを試すためのサンプルリポジトリ(完成形)


## 1. 目次

- [1. 目次](#1-目次)
- [2. 必要要件](#2-必要要件)
- [3. 環境構築](#3-環境構築)
    + [3.1. リポジトリをダウンロード](#31-リポジトリをダウンロード)
    + [3.2. コンテナのビルド、DB作成、アプリケーションの起動](#32-コンテナのビルドdb作成アプリケーションの起動)
- [4. 動作確認](#4-動作確認)


## 2. 必要要件

- Dockerのインストール

動作確認はmacOSで行いました。


## 3. 環境構築

実装手順は記事で解説しています。


### 3.1. リポジトリをダウンロード

~~~bash
git clone git@github.com:t-ueno-ruby/sample-solid-queue.git
~~~


### 3.2. コンテナのビルド、DB作成、アプリケーションの起動

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


## 4. 動作確認

<http://localhost:3000>にアクセスするとRailsのトップページが表示されます。

<http://localhost:3000/posts>にアクセスして動作確認が可能です。
