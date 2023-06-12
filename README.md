# README
# ECサイトアプリ

このアプリケーションは、Ruby on RailsとPostgreSQLを使用して構築されたオンラインショッピングサイトです。ユーザーは製品をカートに追加し、製品の購入ができます。また、認証にはDeviseを使用しています。

## インストールとセットアップ

以下の手順に従って、アプリケーションを実行する準備を行ってください。

### 前提条件

- Ruby 2.7.x
- Ruby on Rails 6.x
- PostgreSQL データベース

### 1. リポジトリのクローン

まず、リポジトリをローカルマシンにクローンします。

```
$ git clone https://github.com/your-repository.git
```

2. 依存関係のインストール
アプリケーションのディレクトリに移動し、必要な依存関係をインストールします。

```
$ cd your-app-directory
$ bundle install
```

3. データベースのセットアップ
データベースをセットアップします。以下のコマンドを順番に実行してください。

```
$ rails db:create
$ rails db:migrate
```

4. アプリケーションの起動
アプリケーションを起動します。

```
$ rails server

```

お問い合わせ
ご質問やご意見がありましたら、お気軽にお問い合わせください。

作者: Azat Allayarov
Eメール: azatallayarow@gmail.com
