# README
* アプリケーション名  
たびログ

* アプリケーション概要  
投稿画像をみんなでコメントするアプリ

* アプリケーション機能一覧  
投稿の一覧/作成/更新/削除  
ユーザー登録、ログイン、ログアウト機能  
投稿画像のアップロード機能  
投稿画像の詳細機能  
ページネーション機能  
投稿画像へのコメント機能  
単体テスト・統合テスト  

* アプリケーション内で使用している技術一覧  
マークアップ・プログラミング言語：HTML、CSS、Ruby  
フレームワーク：Ruby on Rails  
管理ツール：Git、GitHub  
デプロイサーバー：AWS  
DB：MySQL  
ユーザー登録使用gem：devise  
画像アップロード使用gem：carrierwave、mini_magick  
ページネーション使用gem：kaminari  
単体テスト、統合テスト使用gem：rspec-rails、factory_bot_rails  
自動デプロイ使用gem：unicorn、capistrano  

*DB設計*
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true, default: ""|
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|
|------|----|
|text|text|
|image|text|
|user_id|integer|
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|
|------|----|
|text|text|
|user_id|integer|
|tweet_id|integer|
### Association
- belongs_to :user
- belongs_to :tweet