# OOTD (Outfit Of The Day = 今日の服装)
 
コンセプト: 「毎日の服選びが面倒なあなたに。」
 
服ではなく、コーデ写真を入れておくネット上のあなた専用クローゼット。
 
# DEMO
 
[![Image from Gyazo](https://i.gyazo.com/bb039e56a8baf1e280aea27122605030.gif)](https://gyazo.com/bb039e56a8baf1e280aea27122605030)
 
[![Image from Gyazo](https://i.gyazo.com/8bc51202ab2ed50133b410e76d228526.gif)](https://gyazo.com/8bc51202ab2ed50133b410e76d228526)

[![Image from Gyazo](https://i.gyazo.com/194cefd4f8729cb2cd73bf61b17029c9.gif)](https://gyazo.com/194cefd4f8729cb2cd73bf61b17029c9)

# Features
 
自分が撮ったコーデ写真を投稿・確認・編集・削除でき、ボタン１つでランダム表示して毎日の服選びを簡単にしてくれるアプリ。カテゴリ別表示でその日の気分ごとにコーデ一覧を視覚的に整理できるので、意思決定をよりスピーディーにしてくれる。

# Background
あまりファッションに興味が無いので、毎日の服選びが苦痛だった。なぜ苦痛なのかを考えた時、「たくさん服の入っているクローゼットから一枚一枚取り出して、組み合わせを考えるのが自分にとって難しいから」だと考え、それならば「服ではなく、コーデ写真が入ったネット上のクローゼットのようなものがあればもっと簡単に選べるはず」と結論づけ、このアプリの開発を開始した。


# Note
データベースはMySQL、インフラはAWS、Nginx、Unicornを使用。

今後実装したい機能は、以下の通り。

- 天気予報APIで毎日の服選びをより正確に
- カレンダーをアプリ内に設置し、いつどのコーデを着たのか記録できる
 
 # DB schema
## outfitテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
 - belongs_to :user
 - belongs_to :mood


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
 - has_many :moods

## moodテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|bigint|null: false, foreign_key: true|

### Association
 - has_many :outfits
 - belongs_to :user

 # Usage

```bash
git clone https://github.com/Tomoya-Sonok/ootd.git
cd ootd
rails db:create
rails db:migrate
rails db:seed
rails s
```
 
 デモ用アカウントのログイン情報
 ```
 Name: テストくん
 Password: testuser
 ```