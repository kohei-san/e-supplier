# NewSupplier

* アプリケーション概要

* URL

* テスト用アカウント

* 利用方法

* 目指した課題解決

* 洗い出した要件定義

* 実装した機能についての画像、Gif、説明

* 実装予定の機能

* データベース設計

## buyer

| columns            | style     | option
|-----------------------------------------------------------
| name               | string    | null: false, unique: true
| email              | string    | null: false, unique: true
| phone_number       | string    | null: false, unique: true
| encrypted_password | string    | null: false
| last_name          | string    | null: false
| first_name         | string    | null: false
| last_name_kana     | string    | null: false
| first_name_kana    | string    | null: false
| company__name      | string    | null: false
| company_name_kana  | string    | null: false
| prefecture_id      | integer   | null: false
| profile            | text      | null: false

### association
- has_many :parts
- has_many :talk_room
- has_many :messages

## supplier

| columns              | style     | option
|-----------------------------------------------------------
| name                 | string    | null: false, unique: true
| email                | string    | null: false, unique: true
| phone_number         | string    | null: false, unique: true
| encrypted_password   | string    | null: false
| last_name            | string    | null: false
| first_name           | string    | null: false
| last_name_kana       | string    | null: false
| first_name_kana      | string    | null: false
| factory__name        | string    | null: false
| factory_name_kana    | string    | null: false
| prefecture_id        | integer   | null: false
| profile              | text      | null: false

### association
- has_many :talk_room
- has_many :messages

## parts

| columns              | style      | option
|----------------------------------------------------------
| name                 | string     | null: false
| info                 | text       | null: false
| material_id          | integer    | null: false
| process_id           | integer    | null: false
| deadline_id          | integer    | null: false
| supplier             | references | null: false, foreign_key:true

### association
- belongs_to :buyer

## talk_room

| columns      | style      | option
|----------------------------------------------------------
| buyer        | references | null: false foreign_key: true
| supplier     | references | null: false foreign_key: true

### association
- belongs_to :buyer
- belongs_to :supplier
- has_many :comments

## comments

| columns      | style      | option
|----------------------------------------------------------
| comments     | text       | null: false
| buyer        | references | null: false foreign_key: true
| supplier     | references | null: false foreign_key: true
| talk_room    | references | null: false foreign_key: true

### association
- belongs_to :talk_room
- belongs_to :buyer
- belongs_to :supplier


* ローカルでの動作方法



* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
