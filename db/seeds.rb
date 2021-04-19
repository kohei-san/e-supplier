# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def parts_create
  parts = Part.create({ name: "自動車エンジン用シリンダー", info:"来期より生産予定のエンジンの試作部品となります。試験状況に応じて必要数生産をしていくため、納期は１週間程度でご対応願います。", material_id: 6, processing_id: 2, deadline_id: 2, buyer_id: 1})
  parts.image.attach(io: File.open("./app/assets/images/test1.jpeg"),filename: 'test1.jpeg')
end

parts_create