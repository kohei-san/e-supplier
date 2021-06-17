FactoryBot.define do
  factory :supplier do
    gimei = Gimei.name
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    company_name          {gimei.first}
    company_name_kana     {gimei.first.katakana}
    last_name             {gimei.last.kanji}
    first_name            {gimei.first.kanji}
    last_name_kana        {gimei.last.katakana}
    first_name_kana       {gimei.first.katakana}
    phone_number          {Faker::Number.number(digits: 11)}
    prefecture_id         {Faker::Number.between(from: 1, to: 47)}
    address               {Gimei.address}
    profile               {Faker::JapaneseMedia::StudioGhibli.quote}
  end
end