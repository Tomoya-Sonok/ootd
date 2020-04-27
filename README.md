# OOTD (Outfit Of The Day = 今日の服装)

コンセプト --> **_「毎日の服選びが面倒なあなたに。」_**

服ではなく、コーデ写真を入れておくネット上のあなた専用クローゼット。

# DEMO

![ootd1](https://user-images.githubusercontent.com/50537591/78321581-5daf9e00-75a7-11ea-8a80-c1793af72a3b.gif)

![ootd2](https://user-images.githubusercontent.com/50537591/78321637-859f0180-75a7-11ea-9463-1d4752e22100.gif)

![ootd3](https://user-images.githubusercontent.com/50537591/78321717-b67f3680-75a7-11ea-9752-de0606dcb795.gif)

# Production URL

お手数ですが、ぜひ下記のアカウントでログインしてください。  
デモとして実際に使用されたものなので、UI/UX が把握しやすいです。  
（使用した友人から許可は得ています）

**※デモ用アカウントのログイン情報**

```
Name: テストくん
Password: testuser
```

https://www.ootd.me

# Features

自分が撮ったコーデ写真を投稿・確認・編集・削除でき、ボタン１つでランダム表示して毎日の服選びを簡単にしてくれるアプリ。カテゴリ別表示でその日の気分ごとにコーデ一覧を視覚的に整理できるので、意思決定をよりスピーディーにしてくれる。

# Background

あまりファッションに興味が無いので、毎日の服選びが苦痛だった。なぜ苦痛なのかを考えた時、「たくさん服の入っているクローゼットから一枚一枚取り出して、組み合わせを考えるのが自分にとって難しいから」だと考え、それならば「服ではなく、コーデ写真が入ったネット上のクローゼットのようなものがあればもっと簡単に選べるはず」と結論づけ、このアプリの開発を開始した。

# Dev Environment

- Ruby
- Ruby on Rails
- MySQL
- Github
- Visual Studio Code
- jQuery
- AWS
- Nginx
- Unicorn

# Note

今後実装したい機能は、以下の通り。

- 天気予報 API で毎日の服選びをより正確に
- カレンダーをアプリ内に設置し、いつどのコーデを着たのか記録できる

# Versions

Ruby 2.5.1
Rails 5.2.4.1

# DB schema

## outfit テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| name    | string  |                                |
| image   | string  | null: false                    |
| user_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :mood

## user テーブル

| Column   | Type    | Options                   |
| -------- | ------- | ------------------------- |
| username | string  | null: false, unique: true |
| age      | integer | null: false, limit: 2     |
| gender   | integer | null: false               |
| password | string  | null: false               |
| image    | string  |                           |

### Association

- has_many :outfits
- has_many :moods

## mood テーブル

| Column  | Type   | Options                        |
| ------- | ------ | ------------------------------ |
| name    | string | null: false                    |
| user_id | bigint | null: false, foreign_key: true |

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
