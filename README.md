# OOTD (Outfit Of The Day = 今日の服装)
 
コンセプト: 「毎日の服選びが面倒なあなたに。」
 
服ではなく、コーデ写真を入れておくネット上のあなた専用クローゼット。
 
# DEMO
 
"OOTD"の魅力が直感的に伝えわるデモ動画や図解を載せる
 
# Features
 
自分が撮ったコーデ写真を投稿・確認・編集・削除でき、ボタン１つでランダム表示して毎日の服選びを簡単にしてくれるアプリ。カテゴリ別表示でその日の気分ごとにコーデ一覧を視覚的に整理できるので、意思決定をよりスピーディーにしてくれる（実装予定）。

# Background
あまりファッションに興味が無いので、毎日の服選びが苦痛だった。なぜ苦痛なのかを考えた時、「たくさん服の入っているクローゼットから一枚一枚取り出して、組み合わせを考えるのが自分にとって難しいから」だと考え、それならば「服ではなく、コーデ写真が入ったネット上のクローゼットのようなものがあればもっと簡単に選べるはず」と結論づけ、このアプリの開発を開始した。


# Note
 
AWSを使用してデプロイ済みだが、未完成。  
カテゴリ機能や天気予報API導入、Google等SNSのAPI認証ログイン機能など、まだまだやり残したことが多い。
 
 # DB schema
## outfitテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
 - belongs_to :user


## userテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, unique: true|
|age|integer|null: false, limit: 2|
|gender|integer|null: false|
|password|string|null: false|
|image|string||

### Association
 - has_many :outfits

 # Usage

```bash
git clone https://github.com/Tomoya-Sonok/ootd.git
cd ootd
rails db:create
rails db:migrate
rails s
```
 