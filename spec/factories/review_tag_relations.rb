FactoryBot.define do
  factory :review_tag_relation do
    beer_id { Faker::Number.within(range: 1..100) }
    user_id { Faker::Number.within(range: 1..100) }
  end
end