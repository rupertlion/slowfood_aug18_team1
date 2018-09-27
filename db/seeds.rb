# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
categories = Category.create([{ name: 'Starters'}, {name: 'Mains'}, {name: 'Desserts'}, {name: 'Sides'}, {name: 'Beverages'}])

5.times do
    Product.create!(name: Faker::Food.dish,
                 description:Faker::Food.description, price: rand(20..900), category: categories.first )
  end

  5.times do
    Product.create!(name: Faker::Food.dish,
                 description:Faker::Food.description, price: rand(20..900), category: categories.second )
  end

  5.times do
    Product.create!(name: Faker::Food.dish,
                 description:Faker::Food.description, price: rand(20..900), category: categories.fourth )
  end

  5.times do
    Product.create!(name: Faker::Dessert.variety,
                 description:Faker::Dessert.flavor, price: rand(20..900), category: categories.third )
  end

  5.times do
    Product.create!(name: Faker::Beer.name,
                 description:Faker::Beer.style, price: rand(20..900), category: categories.fifth )
  end