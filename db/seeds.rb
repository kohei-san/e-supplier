# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def buyer_create
  @buyer_1 = Buyer.create({ email: "buyer1@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_buyer_1", company_name_kana: "テストバイヤー", prefecture_id: 28, address: "西宮市甲子園町1-82",profile: "This is test_buyer_profile."})
  @buyer_2 = Buyer.create({ email: "buyer2@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_buyer_2", company_name_kana: "テストバイヤー", prefecture_id: 28, address: "西宮市甲子園八番町1-100",profile: "This is test_buyer_profile."})
  @buyer_3 = Buyer.create({ email: "buyer3@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_buyer_3", company_name_kana: "テストバイヤー", prefecture_id: 27, address: "大阪市此花区桜島2丁目1-33",profile: "This is test_buyer_profile."})
  @buyer_4 = Buyer.create({ email: "buyer4@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_buyer_4", company_name_kana: "テストバイヤー", prefecture_id: 12, address: "浦安市舞浜1-1",profile: "This is test_buyer_profile."})
end

buyer_create

def supplier_create
  @supplier_1 = Supplier.create({ email: "supplier1@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_supplier_1", company_name_kana: "テストサプライヤー", prefecture_id: 28, address: "西宮市高松町14-2",profile: "This is test_supplier_profile."})
  @supplier_2 = Supplier.create({ email: "supplier2@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_supplier_2", company_name_kana: "テストサプライヤー", prefecture_id: 28, address: "神戸市中央区港島南町7丁目1-9",profile: "This is test_supplier_profile."})
  @supplier_3 = Supplier.create({ email: "supplier3@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_supplier_3", company_name_kana: "テストサプライヤー", prefecture_id: 27, address: "大阪市中央区道頓堀1丁目",profile: "This is test_supplier_profile."})
  @supplier_4 = Supplier.create({ email: "supplier4@com", phone_number: 1112223344, password: "a111111", last_name: "山本", first_name: "太郎", last_name_kana: "ヤマモト", first_name_kana: "タロウ", company_name: "test_supplier_4", company_name_kana: "テストサプライヤー", prefecture_id: 27, address: "大阪市浪速区恵美須東1丁目18-6",profile: "This is test_supplier_profile."})
end

supplier_create

def parts_create
  part_1 = Part.create({ name: "自動車エンジン用シリンダー", info:"来期より生産予定のエンジンの試作部品となります。試験状況に応じて必要数生産をしていくため、納期は１週間程度でご対応願います。", material_id: 6, processing_id: 2, deadline_id: 2, buyer_id: @buyer_2.id})
  part_1.image.attach(io: File.open("./app/assets/images/test_1.jpeg"),filename: 'test_1.jpeg')
  
  part_2 = Part.create({ name: "プーリー（メッキ含む）", info:"弊社内にて組み立てを実施している装置のプーリーの継続的な製造をお願いします。アルマイト処理まで完了した完成品での納品を願います。", material_id: 4, processing_id: 1, deadline_id: 4, buyer_id: @buyer_3.id})
  part_2.image.attach(io: File.open("./app/assets/images/test_2.jpeg"),filename: 'test_2.jpeg')

  part_3 = Part.create({ name: "マシニング加工品複数", info:"まずは貴社の得意な形状、サイズ等を教えてください。お願いできそうな図面をいくつか見積もり願います。", material_id: 2, processing_id: 2, deadline_id: 6, buyer_id: @buyer_1.id})
  part_3.image.attach(io: File.open("./app/assets/images/test_3.jpeg"),filename: 'test_3.jpeg')

  part_4 = Part.create({ name: "汎用フライス加工品", info:"試作品の加工をお願いします。部品毎に2~3個のロットを想定しております。また、納期について柔軟にご対応頂けるメーカー様が嬉しいです。", material_id: 3, processing_id: 2, deadline_id: 2, buyer_id: @buyer_3.id})
  part_4.image.attach(io: File.open("./app/assets/images/test_4.jpeg"),filename: 'test_4.jpeg')

  part_5 = Part.create({ name: "ロボットアーム用精密部品", info:"近年需要の拡大している弊社ロボットアームの増産に向けて、サポートいただける取引先様を探しています。", material_id: 4, processing_id: 2, deadline_id: 5, buyer_id: @buyer_1.id})
  part_5.image.attach(io: File.open("./app/assets/images/test_5.jpeg"),filename: 'test_5.jpeg')

  part_6 = Part.create({ name: "大型のマシニングセンタによる加工品", info:"弊社装置内のテーブルなど、大型の加工品をご対応いただけるメーカー様を募集しております。弊社着にて運送までご対応いただけると幸いです。地域によっては引き取り便もございます。ご相談ください。", material_id: 2, processing_id: 2, deadline_id: 7, buyer_id: @buyer_1.id})
  part_6.image.attach(io: File.open("./app/assets/images/test_6.jpeg"),filename: 'test_6.jpeg')

  part_7 = Part.create({ name: "飲料、薬品の注入装置部品", info:"弊社では飲料や薬品を注入する装置を製造しています。各装置はオーダーメイドとなるため、類似部品は多いものの装置毎での製作依頼となります。柔軟にご対応いただけると幸いです。", material_id: 2, processing_id: 1, deadline_id: 4, buyer_id: @buyer_4.id})
  part_7.image.attach(io: File.open("./app/assets/images/test_7.jpeg"),filename: 'test_7.jpeg')

  part_8 = Part.create({ name: "航空機エンジン補用部品", info:"メンテナンス等で使用する部品の制作を願います。精密部品につき3次元測定器の測定データを併せて納品ください。", material_id: 6, processing_id: 2, deadline_id: 5, buyer_id: @buyer_1.id})
  part_8.image.attach(io: File.open("./app/assets/images/test_8.jpeg"),filename: 'test_8.jpeg')

  part_9 = Part.create({ name: "溶接対応依頼", info:"弊社取引のある溶接工場が廃業予定により、新たな依頼先を探しております。まずは一度お打ち合わせさせていただきたく存じます。", material_id: 1, processing_id: 5, deadline_id: 4, buyer_id: @buyer_4.id})
  part_9.image.attach(io: File.open("./app/assets/images/test_9.jpeg"),filename: 'test_9.jpeg')
  
end

parts_create