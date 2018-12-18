## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|image|string|

### Association
- has_many :items
- has_many :sns_credential
- has_many :comments
- has_many :messages
- has_many :likes
- has_many :user_reviewes
- has_one :credit
- has_one :profile


## profileテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|postal_codes|integer|null: false|
|region|string|null: false|
|city|string|null: false|
|address|string||null: false|
|building_name|string|
|phone_number|integer|
|profile_text|text|
|birth_date|date|

### Association
- beloings_to :user


## user_reviewテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_id|references| class_name: "User"|
|seller_id|references| class_name: "User"|
|review|text|null: false|

### Association
- belongs_to :user


## creditテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false, unique: true|
|code|integer|null: false, unique: true|
|year_month|string|null: false, unique: true|
|user_id|references| foreign_key: true|

### Association
- has_one :user


## sns_credentialテーブル
|Column|Type|Options|
|------|----|-------|
|uid|string|null: false|
|provider|string|null: false|
|user_id|references| foreign_key: true|
|access_token|string|
|access_secret|string|

### Association
- belongs_to :user


## itme_likesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references| foreign_key: true|
|user_id|references| foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|item_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references| foreign_key: true|
|buyer_id|reference| class_name: "User", foreign_key: true|
|seller_id|reference| class_name: "User", foreign_key: true|
|text|text|null: false|

### Association
- belongs_to :user
- belongs_to :item


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explaination|text|null: false|
|price|integer|null: false|
|status|integer|null: false|
|shipping_fare|string|null: false|
|shipping_region|integer|null: false|
|shipping_schedule|string|null: false|
|shipping_method|string||null: false|
|top_category|string|null: false|
|mid_category|string|null: false|
|bottom_category|string|null: false|
|size|string|
|brand|string|
|seller_id|references|class_name: "User", foreign_key: true|
|buyer_id|references|class_name: "User", foreign_key: true|

### Association
- belongs_to :user
- has_many :item_images
- has_many :messages
- has_many :likes
- has_many :comments


## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|item_id|references|foreign_key: true|

### Association
- belongs_to :item

