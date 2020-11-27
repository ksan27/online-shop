# README

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :shops

## shops テーブル

| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| title    | string     | null: false |
| shop_url | string     | null: false |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
