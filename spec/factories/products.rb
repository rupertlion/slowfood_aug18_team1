FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    price { 1.5 }
    category_id { FactoryBot.create(:category) }
  end
end
