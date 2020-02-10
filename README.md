# chat-space設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|

### Association
- has_many :message
- has_many :groups,through: :groups_users
- has_many :groups_users

## gropsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false|

### Association
- has_many :messages
- has_many  :users,  through:  :groups_users
- has_many :groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|nill: false|
|image|string|nill: false|
|group|references|nill: false, foreign_key: true|
|user|references|nill: false, foreign_key: true|

### Association
- belongs_to :groups
- belongs_to :users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
