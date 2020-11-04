FactoryBot.define do
  factory :beer do
    name { Faker::Beer.name }
  end
end
