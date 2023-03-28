FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    name { Faker::Name.name }
    admin { '1' }
    password { 'password'}
    password_confirmation { 'password' }
  end
end
