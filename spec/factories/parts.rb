FactoryBot.define do
  factory :part do
    name          {Faker::Lorem.sentence}
    info          {Faker::Lorem.paragraphs}
    material_id   {Faker::Number.between(from: 1, to: 6)}
    processing_id {Faker::Number.between(from: 1, to: 5)}
    deadline_id   {Faker::Number.between(from: 1, to: 7)}
    association :buyer
  end
end
