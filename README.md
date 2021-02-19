# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| current_weight     | integer | null: false               |
| target_weight      | integer | null: false               |

### Association

- has_many :diaries
- has_many :messages

## diaries テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| day             | string     | null: false       |
| breakfast_image | text       |                   |
| lunch_image     | text       |                   |
| dinner_image    | text       |                   |
| snack_image     | text       |                   |
| weight          | string     | null: false       |
| exercise        | text       |                   |
| comment         | text       |                   |
| user            | references | foreign_key: true |
### Association

- belongs_to :users

## messages テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| text               | text       | null: false       |
| user               | references | foreign_key: true |


### Association

- belongs_to :user