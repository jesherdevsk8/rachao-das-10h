FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    name { Faker::Name.name }
    profile { (0..1).to_a.sample }
    password { 'password'}
    password_confirmation { 'password' }
  end
end
