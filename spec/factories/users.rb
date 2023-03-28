FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    admin { '1' }
    password { "password"} 
    password_confirmation { "password" }
  end
end
