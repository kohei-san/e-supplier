# e-supplier

## アプリケーション概要

ご覧いただきありがとうございます。

ものづくりを行うメーカー、その購買担当者が新たにサプライヤーを発見することをサポートするためのアプリケーションです。<br>
また、サプライヤーがメーカーにPRすることもできます。

メーカーは製作を依頼したい部品を出品し、サプライヤーはメーカーにメッセージを送ることで部品制作の見積もりに立候補します。
（守秘義務の関係から、図面などの情報はメッセージにて送付するものと考えています。）

アプリケーション概要などを短いスライドにまとめました。ご覧いただけると幸いです。<br>

https://docs.google.com/presentation/d/1QkHJtIfg07VZ4IFVotHTPuLbjF_p3n2UqAeWr7GJAkE/edit?usp=sharing



## URL
https://shrouded-forest-16187.herokuapp.com/

## テスト用アカウント

バイヤー<br>
email:      buyer1@com<br>
password:   a111111<br>
<br>
サプライヤー<br>
email:      supplier1@com<br>
password:   a111111<br>

## 利用方法

- 非ログイン時

出品された部品、バイヤー、サプライヤーの詳細情報を閲覧することができます。

- メーカー、バイヤーの場合

ログイン後、製作依頼をする部品を出品することができます。

- サプライヤーの場合

ログイン後、製作依頼部品の詳細ページから、出品者にメッセージを送ることができます。(実装中)

## 目指した課題解決

「日本のものづくり」が強くするにはどうすれば良いかを考え、このアプリを制作し始めました。<br>

昨今、海外から部品の調達を行うメーカーが多くなっています。<br>
コスト面で強みがあること、また加工機の発達等でアジア圏製部品の品質も安定してきていることなどが要員としてあげられます。<br>
また、国内では高齢化、後継者不足によりものづくりに関わる人材とともに技術も失われていくことが懸念されています。<br>

国内でよりオープンに購買、調達を行うことができれば、各サプライヤーの競争力や技術も向上し「日本のものづくり」が強くなると考えました。<br>

## 要件定義

- ユーザー登録機能 (buyer, supplier)
- 部品出品機能  
- 出品部品、編集、削除機能  
- ユーザープロフィール表示機能 (buyer, supplier) 
- GoogleMapAPIを使用してユーザーの住所表示
- 出品部品一覧表示機能  
- メール機能（supplier → buyer）


## 機能についての説明

出品された部品を選択し、出品者へコンタクトをとります。
![46028829d1997c228b7ec19eb7957f71](https://user-images.githubusercontent.com/79580640/117789059-eb69bc80-b282-11eb-9212-975aceaaa6c2.gif)
その後、図面のやり取り、見積もりの提出等を行っていきます。


ユーザーの住所はGoogleMapAPIで表示されるようにしています。
![79a05943b21556caf5694f1ef98c27f9](https://user-images.githubusercontent.com/79580640/117789790-a8f4af80-b283-11eb-90b6-167c07f9f40c.png)


## 実装予定の機能

- 検索機能など

## データベース設計

## buyer

| columns            | style     | option                      <br>
|----------------------------------------------------------- <br>
| email              | string    | null: false, unique: true <br>
| phone_number       | string    | null: false, unique: true <br>
| encrypted_password | string    | null: false <br>
| last_name          | string    | null: false <br>
| first_name         | string    | null: false <br>
| last_name_kana     | string    | null: false <br>
| first_name_kana    | string    | null: false <br>
| company_name       | string    | null: false <br>
| company_name_kana  | string    | null: false <br>
| prefecture_id      | integer   | null: false <br>
| profile            | text      |  <br>
| address            | string    | null: false <br>
| latitude           | float     | <br>
| longitude          | float     | <br>

### association
- has_many :parts

## supplier

| columns              | style     | option <br>
|----------------------------------------------------------- <br>
| email                | string    | null: false, unique: true <br>
| phone_number         | string    | null: false, unique: true <br>
| encrypted_password   | string    | null: false <br>
| last_name            | string    | null: false <br>
| first_name           | string    | null: false <br>
| last_name_kana       | string    | null: false <br>
| first_name_kana      | string    | null: false <br>
| company_name         | string    | null: false <br>
| company_name_kana    | string    | null: false <br>
| prefecture_id        | integer   | null: false <br>
| profile              | text      |  <br>
| address              | string    | null: false <br>
| latitude             | float     | <br>
| longitude            | float     | <br>



## parts

| columns              | style      | option <br>
|---------------------------------------------------------- <br>
| name                 | string     | null: false <br>
| info                 | text       | null: false <br>
| material_id          | integer    | null: false <br>
| processing_id        | integer    | null: false <br>
| deadline_id          | integer    | null: false <br>
| buyer                | references | null: false, foreign_key:true <br>

### association
- belongs_to :buyer
