FactoryBot.define do
  factory :player do
    name { Faker::Name.name }
    nickname { 'nickname' }
    email { Faker::Internet.free_email }
    birthdate { Faker::Date.birthday(min_age: 18, max_age: 50) }
    shirt_number { (1..100).to_a.sample }
    active { true }
    goal { (1..100).to_a.sample }
  end
end
