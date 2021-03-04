# アプリ名
#### レベル100ダイエット

# 概要
ダイエットを続けることに特化したアプリケーション
機能
- 食事・運動の記録
- 体重減量時のレベルアップ機能
- 体重推移のグラフ化
- 栄養素のグラフ化
- 同じようにダイエットに挑戦している仲間とのコメントによるコミュニケーション
# 本番環境
https://level-100-diet.herokuapp.com/

ログイン情報(テスト用)
- Eメール: test@gmail.com
- パスワード: Aa000000

# 作成背景(意図)
ダイエットを始めるとなかなか続けられなかったり、食事管理が面倒だったりします。
私が実際にトレーナーからトレーニングを教えてもらいに行った時も、トレーニングは楽しいけど、食事管理が大変でした。
そのためアプリによる食事管理や、レベルによって自分の成長を見やすくすることで、ダイエットを続けることができるアプリケーションを作りました。

# DEMO
### トップページ
![before](https://user-images.githubusercontent.com/76457647/109828595-20a0cf80-7c80-11eb-9c5d-18babb892f6b.jpeg)
アプリケーション紹介ページです。
ログインする前はこのページへ遷移します。
### 投稿一覧
![toppage](https://user-images.githubusercontent.com/76457647/109829620-0d423400-7c81-11eb-9afd-3e1aba9c95a2.jpeg)
皆が投稿した記録をみることができます。
詳細からコメント可能です。
### 詳細表示画面
![shousai](https://user-images.githubusercontent.com/76457647/109831909-35cb2d80-7c83-11eb-8b67-9c67a3ac0469.jpeg)
栄養素のグラフやコメントを見ることができます。
### 投稿画面
![toukou](https://user-images.githubusercontent.com/76457647/109831955-4380b300-7c83-11eb-8a97-fdbfaee68917.jpeg)
日付、画像、運動記録などを記入します。
### マイページ
![mypage](https://user-images.githubusercontent.com/76457647/109829740-2a770280-7c81-11eb-90c6-570c21c5c4f0.jpeg)
自分の成長記録を見ることができます。
# 工夫したポイント
- レベル機能によって小さな成功体験を積み重ねることができるように工夫しました。
- グラフによって栄養素や体重遷移を見やすいようにも工夫しました。
# 使用技術
### バックエンド
Ruby, Ruby on Rails
### フロントエンド
javaScript,preview.js
### データベース
MySQL
### インフラ
aws s3
### 本番環境
heroku
### ソース管理
GitHub, GitHubDesktop
### テスト
RSpec
### エディタ
VScode
# 課題や今後実装したい機能
- 管理者権限
トレーナーが顧客情報を管理できるように管理者権限を付与しようと考えています。
- docker
より高速でアプリを動かせるようにドッカーを付け加えたいと考えています。

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| initial_weight     | string | null: false               |
| target_weight      | string | null: false               |

### Association

- has_many :diaries
- has_many :comments

## diaries テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| day             | string     | null: false       |
| breakfast_image | text       |                   |
| lunch_image     | text       |                   |
| dinner_image    | text       |                   |
| snack_image     | text       |                   |
| weight          | string     | null: false       |
| exercise        | text       |                   |
| comment         | text       |                   |
| user            | references | foreign_key: true |

### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| text               | text       | null: false       |
| diary              | references | foreign_key: true |
| user               | references | foreign_key: true |

### Association

- belongs_to :diary
- belongs_to :user