# NewSupplier

* アプリケーション概要

ものづくりを行うメーカー、その購買担当者が新たなサプライヤーを発見することをサポートするためのアプリケーションです。
また、サプライヤーがメーカーにPRすることもできます。

メーカーは制作を依頼したい部品を出品し、サプライヤーに見積理を依頼します。サプライヤーはメーカーにメッセージを送ることで部品制作の見積もりに立候補することもできます。
（守秘義務の関係から、図面などの情報はメッセージにて送付するものと考えています。）


* URL

* テスト用アカウント

* 利用方法

* 目指した課題解決

「日本のものづくり」が強くするにはどうすれば良いかを考え、このアプリを制作し始めました。

昨今、海外から部品の調達を行うメーカーが多くなっています。
コスト面で強みがあること、また加工機の発達等でアジア圏製部品の品質も安定してきていることなどが要員としてあげられます。
また、国内では高齢化、後継者不足によりものづくりに関わる人材とともに技術も失われていくことが懸念されています。

国内でよりオープンに購買、調達を行うことができれば、各サプライヤーの競争力や技術も向上し「日本のものづくり」が強くなると考えました。

* 洗い出した要件定義

ユーザー登録機能  
部品出品機能  
出品部品、編集、削除機能  
メッセージ機能  
出品部品一覧表示機能  
ユーザープロフィール表示機能  


* 実装した機能についての画像、Gif、説明

* 実装予定の機能

お気に入り登録機能  
GoogleMap表示機能

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
| company_name       | string    | null: false
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
| factory_name         | string    | null: false
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
| processing_id           | integer    | null: false
| deadline_id          | integer    | null: false
| buyer             | references | null: false, foreign_key:true

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


