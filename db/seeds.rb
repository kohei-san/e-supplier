# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def buyer_create
  buyer = Buyer.create({ name: "二菱重工三宅", email: "buyer1@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "二菱重工株式会社", company_name_kana: "ニツビシジュウコウ", processing_id: 28, profile: "start your impossible"})
  buyer = Buyer.create({ name: "トコタ自動車", email: "buyer2@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "トコタ自動車株式会社", company_name_kana: "トコタジドウシャ", processing_id:23 , profile: "move the world for what?"})
  buyer = Buyer.create({ name: "メブテスコ坂本", email: "buyer3@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "株式会社メブテスコ", company_name_kana: "メブテスコ", processing_id: 28, profile: "動かすと、止まらない"})
  buyer = Buyer.create({ name: "ヤンボー", email: "buyer4@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "株式会社ヤンボー", company_name_kana: "ヤンボー", processing_id: 28, profile: "君の名前はヤンボー"})
end

buyer_create

def supplier_create
  supplier = Supplier.create({ name: "二菱重工三宅", email: "supplier@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "二菱重工株式会社", company_name_kana: "ニツビシジュウコウ", processing_id: 28, profile: "start your impossible"})
  supplier = Supplier.create({ name: "トコタ自動車", email: "supplier@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "トコタ自動車株式会社", company_name_kana: "トコタジドウシャ", processing_id:23 , profile: "move the world for what?"})
  supplier = Supplier.create({ name: "メブテスコ坂本", email: "supplier@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "株式会社メブテスコ", company_name_kana: "メブテスコ", processing_id: 28, profile: "動かすと、止まらない"})
  supplier = Supplier.create({ name: "ヤンボー", email: "supplier@com", phone_number: 1112223344, encrypted_password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "株式会社ヤンボー", company_name_kana: "ヤンボー", processing_id: 28, profile: "君の名前はヤンボー"})
end

supplier_create

def parts_create
  parts = Part.create({ name: "自動車エンジン用シリンダー", info:"来期より生産予定のエンジンの試作部品となります。試験状況に応じて必要数生産をしていくため、納期は１週間程度でご対応願います。", material_id: 6, processing_id: 2, deadline_id: 2, buyer_id: 1})
  parts.image.attach(io: File.open("./app/assets/images/test1.jpeg"),filename: 'test1.jpeg')
end

parts_create
