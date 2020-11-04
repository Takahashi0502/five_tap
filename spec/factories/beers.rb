FactoryBot.define do
  factory :beer do
    name { Faker::Beer.name }
    category_id { 1 }
    style_id { 1 }
  end
end
