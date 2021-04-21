# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def buyer_create
  buyer = Buyer.create({ name: "二菱重工三宅", email: "buyer1@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "二菱重工株式会社", company_name_kana: "ニツビシジュウコウ", prefecture_id: 28, profile: "start your impossible"})
  buyer = Buyer.create({ name: "トコタ自動車", email: "buyer2@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "トコタ自動車株式会社", company_name_kana: "トコタジドウシャ", prefecture_id:23 , profile: "move the world for what?"})
  buyer = Buyer.create({ name: "メブテスコ坂本", email: "buyer3@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "株式会社メブテスコ", company_name_kana: "メブテスコ", prefecture_id: 28, profile: "動かすと、止まらない"})
  buyer = Buyer.create({ name: "ヤンボー山田", email: "buyer4@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "株式会社ヤンボー", company_name_kana: "ヤンボー", prefecture_id: 28, profile: "君の名前はヤンボー"})
end

buyer_create

def supplier_create
  supplier = Supplier.create({ name: "金田金属", email: "supplier1@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "金田金属", company_name_kana: "カネダキンゾク", prefecture_id: 28, profile: "start your impossible"})
  supplier = Supplier.create({ name: "坂本精工", email: "supplier2@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "坂本精工", company_name_kana: "サカモトセイコウ", prefecture_id:23 , profile: "move the world for what?"})
  supplier = Supplier.create({ name: "アドバンスドテック", email: "supplier3@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "アドバンスドテック", company_name_kana: "アドバンスドテック", prefecture_id: 28, profile: "動かすと、止まらない"})
  supplier = Supplier.create({ name: "山本精密工業", email: "supplier4@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "山本精密工業", company_name_kana: "ヤマモトセイミツコウギョウ", prefecture_id: 28, profile: "君の名前はヤンボー"})
end

supplier_create

def parts_create
  part_1 = Part.create({ name: "自動車エンジン用シリンダー", info:"来期より生産予定のエンジンの試作部品となります。試験状況に応じて必要数生産をしていくため、納期は１週間程度でご対応願います。", material_id: 6, processing_id: 2, deadline_id: 2, buyer_id: 2})
  part_1.image.attach(io: File.open("./app/assets/images/test_1.jpeg"),filename: 'test_1.jpeg')
  sleep 1
  
  part_2 = Part.create({ name: "プーリー（メッキ含む）", info:"弊社内にて組み立てを実施している装置のプーリーの継続的な製造をお願いします。アルマイト処理まで完了した完成品での納品を願います。", material_id: 4, processing_id: 1, deadline_id: 4, buyer_id: 3})
  part_2.image.attach(io: File.open("./app/assets/images/test_2.jpeg"),filename: 'test_2.jpeg')
  sleep 1

  part_3 = Part.create({ name: "マシニング加工品複数", info:"まずは貴社の得意な形状、サイズ等を教えてください。お願いできそうな図面をいくつか見積もり願います。", material_id: 2, processing_id: 2, deadline_id: 6, buyer_id: 1})
  part_3.image.attach(io: File.open("./app/assets/images/test_3.jpeg"),filename: 'test_3.jpeg')
  sleep 1

  part_4 = Part.create({ name: "汎用フライス加工品", info:"試作品の加工をお願いします。部品毎に2~3個のロットを想定しております。また、納期について柔軟にご対応頂けるメーカー様が嬉しいです。", material_id: 3, processing_id: 2, deadline_id: 2, buyer_id: 4})
  part_4.image.attach(io: File.open("./app/assets/images/test_4.jpeg"),filename: 'test_4.jpeg')
  sleep 1

  part_5 = Part.create({ name: "ロボットアーム用精密部品", info:"近年需要の拡大している弊社ロボットアームの増産に向けて、サポートいただける取引先様を探しています。", material_id: 4, processing_id: 2, deadline_id: 5, buyer_id: 1})
  part_5.image.attach(io: File.open("./app/assets/images/test_5.jpeg"),filename: 'test_5.jpeg')
  sleep 1

  part_6 = Part.create({ name: "大型のマシニングセンタによる加工品", info:"弊社装置内のテーブルなど、大型の加工品をご対応いただけるメーカー様を募集しております。弊社着にて運送までご対応いただけると幸いです。地域によっては引き取り便もございます。ご相談ください。", material_id: 2, processing_id: 2, deadline_id: 7, buyer_id: 1})
  part_6.image.attach(io: File.open("./app/assets/images/test_6.jpeg"),filename: 'test_6.jpeg')
  sleep 1

  part_7 = Part.create({ name: "飲料、薬品の注入装置部品", info:"弊社では飲料や薬品を注入する装置を製造しています。各装置はオーダーメイドとなるため、類似部品は多いものの装置毎での製作依頼となります。柔軟にご対応いただけると幸いです。", material_id: 2, processing_id: 1, deadline_id: 4, buyer_id: 2})
  part_7.image.attach(io: File.open("./app/assets/images/test_7.jpeg"),filename: 'test_7.jpeg')
  sleep 1

  part_8 = Part.create({ name: "航空機エンジン補用部品", info:"メンテナンス等で使用する部品の制作を願います。精密部品につき3次元測定器の測定データを併せて納品ください。", material_id: 6, processing_id: 2, deadline_id: 5, buyer_id: 1})
  part_8.image.attach(io: File.open("./app/assets/images/test_8.jpeg"),filename: 'test_8.jpeg')
  sleep 1

  part_9 = Part.create({ name: "溶接対応依頼", info:"弊社取引のある溶接工場が廃業予定により、新たな依頼先を探しております。まずは一度お打ち合わせさせていただきたく存じます。", material_id: 1, processing_id: 5, deadline_id: 4, buyer_id: 4})
  part_9.image.attach(io: File.open("./app/assets/images/test_9.jpeg"),filename: 'test_9.jpeg')
  
end

parts_create