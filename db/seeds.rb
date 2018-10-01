require 'faker'
categories = Category.create([{ name: 'Starters'}, {name: 'Mains'}, {name: 'Desserts'}, {name: 'Sides'}, {name: 'Beverages'}])

3.times do
  Product.create!(name: Faker::Food.dish,
  description:Faker::Food.description, price: rand(20..900), category: categories.first )
end

3.times do  
  Product.create!(name: Faker::Food.dish,
  description:Faker::Food.description, price: rand(20..900), category: categories.second )
end

3.times do
  Product.create!(name: Faker::Food.dish,
  description:Faker::Food.description, price: rand(20..900), category: categories.fourth )
end

3.times do
  Product.create!(name: Faker::Dessert.variety,
  description:Faker::Dessert.flavor, price: rand(20..900), category: categories.third )
end

3.times do
  Product.create!(name: Faker::Beer.name,
  description:Faker::Beer.style, price: rand(20..900), category: categories.fifth )
end