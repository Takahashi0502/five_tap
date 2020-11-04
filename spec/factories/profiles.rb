FactoryBot.define do
  factory :profile do
    user_id { Faker::Number.within(range: 1..100) }
    twitter_link { Faker::Internet.url }
  end
end
