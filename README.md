# DB設計

## outfitテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
 - has_many :outfits_tags
 - has_many :tags, through: :outfits_tags


## tagテーブル
|Column|Type|Options|
|------|----|-------|
|tagname|string||

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
|username|string|null: false, unique: true|
|age|integer|null: false, limit: 2|
|gender|integer|null: false|
|password|string|null: false|

### Association
 - has_many :outfits
 