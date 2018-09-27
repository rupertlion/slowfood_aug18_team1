Given("the following products exist") do |table|
    table.hashes.each do |product|
      category = Category.find_by(name: product[:category])
      product.except!('category')
      FactoryBot.create(:product, product.merge(category: category)) 
    end
  end

  Given("the following categories exist") do |table|
    table.hashes.each do |category|
      Category.create!(category)
  end
  end