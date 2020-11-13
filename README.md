# SimpleMemo
************

## SimpleMemoは、アカウントを作成し、メモを管理するアプリケーションです
------------------------------------------------------
 

### テスト用アカウント
-----------------

```
Email: test111@test.com
Password: test111
```
 
**利用方法は、アカウントを作成し、フォルダーを作ります。**
**フォルダーの作成が終わると新規作成ボタンの下にフォルダが追加されます。**
**フォルダの+にカーソルを当てるとポップアップが表示されます。**
**こちらのメモ新規作成ボタンをクリックするとメモを作成できます。**


## 目指した課題
-------------


 
 
 
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
