# README

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :shops
- has_many :sns_credentials

## shops テーブル

| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| title    | string     | null: false |
| shop_url | string     | null: false |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user

### sns_credentials テーブル
| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| provider | string     | null: false |
| uid      | string     | null: false |
| user     | references | null: false, foreign_key: true |

- belongs_to :user