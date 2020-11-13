 # DB 設計

## users table

| Column           | Type    | Options      |
|------------------|---------|--------------|
| nickname         | string  | null: false  |
| email            | string  | null: false  |
| password         | string  | null: false  |

### Association

* has_many :folders


## folders table

| Column         | Type        | Options            |
|----------------|-------------|--------------------|
| title          | string      | null: false        |
| user           | references  | foreign_key: true  |

### Association

- belongs_to :user
- has_many :memos

## memos table

| Column       | Type        | Options            |
|--------------|-------------|--------------------|
| title        | string      | null: false        |
| text         | text        | null: false        |
| folder       | references  | foreign_key: true  |

### Association

- belongs_to :folder
