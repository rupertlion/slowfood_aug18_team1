Given("the following products exist") do |table|
    table.hashes.each do |product|
      category = Category.find_by(name: product[:category])
      product.except!('category')
      create(:product, product.merge(category: category)) 
    end
  end

Given("the following categories exist") do |table|
  table.hashes.each do |category|
    create(:category, category)
  end
end