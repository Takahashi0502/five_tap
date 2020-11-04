FactoryBot.define do
  factory :review do
    user_id { Faker::Number.within(range: 1..100) }
    beer_id { Faker::Number.within(range: 1..100) }
    content { "aaaaa" }
  end
end