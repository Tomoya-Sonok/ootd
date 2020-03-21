# OOTD (Outfit Of The Day = 今日の服装)
 
コンセプト: 「毎日の服選びが面倒なあなたに。」
 
服ではなく、コーデ写真を入れておくネット上のあなた専用クローゼット。
 
# DEMO
 
"OOTD"の魅力が直感的に伝えわるデモ動画や図解を載せる
 
# Features
 
"OOTD"のセールスポイントや差別化などを説明する
 
# DB設計

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

# Note
 
AWSを使用してデプロイ済みだが、未完成。  
カテゴリ機能や天気予報API導入、Google等SNSのAPI認証ログイン機能など、まだまだやり残したことが多い。
 
# Usage

```bash
git clone https://github.com/Tomoya-Sonok/ootd.git
cd ootd
rails db:create
rails db:migrate
rails s
```
 
# Author

* 作成者: Tomoya Sonokui
* E-mail: wlcmty08kh@gmail.com
