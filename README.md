# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :items
- has_many :snses
- has_many :comments
- has_many :messages
- has_many :likes
- has_many :user_reviewes
- has_one :credit
- has_one :profile


## profileテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|postal_codes|integer|null: false|
|region|string|null: false|
|city|string|null: false|
|adress|string||null: false|
|building_name|string|
|tell|integer|
|image|string|
|profile_text|text|
|birth_date|date|

### Association
- has_one :user


## user_reviewテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_id|reference|null: false, class_name: "User"|
|seller_id|reference|null: false, class_name: "User"|
|review|text|null: false|

### Association
- belongs_to :user


## creditテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false, unique: true|
|code|integer|null: false, unique: true|
|year_month|string|null: false, unique: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- has_one :user


## snsテーブル
|Column|Type|Options|
|------|----|-------|
|uid|string|null: false|
|provider|string|null: false|
|user_id|reference|null: false, foreign_key: true|
|access_token|string|
|access_secret|string|

### Association
- belongs_to :user


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|item_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|intger|null: false, foreign_key: true|
|buyer_id|reference|null: false, class_name: "User"|
|seller_id|reference|null: false, class_name: "User"|
|message|text|null: false, unique: true|

### Association
- belongs_to :user
- belongs_to :item


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explain|text|null: false|
|price|integer|null: false|
|status|text|null: false|
|shipping_fee|string|null: false|
|shipping_region|integer|null: false|
|shipping_schedule|string|null: false|
|shipping_method|string||null: false|
|top_category|string|null: false|
|mid_category|string|null: false|
|bottom_category|string|null: false|
|size|string|
|brand|string|
|seller_id|reference|class_name: "User"|
|buyer_id|reference||class_name: "User"|

### Association
- belongs_to :user
- has_many :images
- has_many :messages
- has_many :likes
- has_many :comments


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :item


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
