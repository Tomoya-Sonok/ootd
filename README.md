# DB設計

## outfitテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|image_id|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
 - has_many :outfits_tags
 - has_many :tags, through: :outfits_tags


## tagテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
 - has_many :outfits_tags
 - has_many :outfits, through: :outfits_tags


## outfits_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|outfit_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|

### Association
 - belongs_to :outfit
 - belongs_to :tag


## userテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|age|smallint|null: false|
|gender|integer|null: false|
|password|string|null: false|

### Association
 - has_many :outfits
 - has_many :relationships
 - has_many :followings, through: :relationships, source: :follow
 - has_many :reverse_of_relationships, class_name:'Relationship', foreign_key:'follow_id'
 - has_many :followers, through: :reverse_of_relationships, source: :user


## relationshipsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|follow_id|integer|null: false, foreign_key: true|

### Association
 - belongs_to :user
 - belongs_to :follow, class_name:'User'