# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  [
    {
      username: 'テストくん',
      gender: 0,
      age: 22,
      password: "testuser",
      password_confirmation: "testuser",
    },
  ]
)

Mood.create!(
  [
    {
      name: '今の気分を選択してください'
    },
    {
      name: '明るい、楽しい'
    },
    {
      name: '綺麗めシンプル'
    },
    {
      name: 'おしゃれしたい'
    },
  ]
)

Outfit.create!(
  [
    {
      name: 'コートが主役コーデ',
      image: File.open('app/assets/images/masashi1.jpg'),
      user_id: 1,
      mood_id: 2,
    },
    {
      name: 'シンプルコーデ',
      image: File.open('app/assets/images/masashi2.jpg'),
      user_id: 1,
      mood_id: 4,
    },
    {
      name: 'お洒落タックインコーデ',
      image: File.open('app/assets/images/masashi3.jpg'),
      user_id: 1,
      mood_id: 3,
    },
    {
      name: 'シックなコーデ',
      image: File.open('app/assets/images/masashi4.jpg'),
      user_id: 1,
      mood_id: 2,
    },
    {
      name: '重厚なコートコーデ',
      image: File.open('app/assets/images/masashi5.jpg'),
      user_id: 1,
      mood_id: 4,
    },
    {
      name: 'コートが主役コーデ',
      image: File.open('app/assets/images/masashi6.jpg'),
      user_id: 1,
      mood_id: 3,
    },
    {
      name: '爽やか夏コーデ',
      image: File.open('app/assets/images/masashi7.jpg'),
      user_id: 1,
      mood_id: 2,
    },
    {
      name: '可愛いTシャツコーデ',
      image: File.open('app/assets/images/masashi8.jpg'),
      user_id: 1,
      mood_id: 3,
    },
    {
      name: 'シンプルイズザベスト',
      image: File.open('app/assets/images/masashi9.jpg'),
      user_id: 1,
      mood_id: 4,
    },
    {
      name: '可愛い鞄と伊達メガネコーデ',
      image: File.open('app/assets/images/masashi10.jpg'),
      user_id: 1,
      mood_id: 2,
    },
    {
      name: '暗色系コーデ',
      image: File.open('app/assets/images/masashi11.jpg'),
      user_id: 1,
      mood_id: 3,
    },
  ]
)