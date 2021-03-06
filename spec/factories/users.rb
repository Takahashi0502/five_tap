FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.first_name }
    email                 { Faker::Internet.email }
    password              { 'abc123' }
    password_confirmation { password }
  end
end
