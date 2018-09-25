Given("the following product exists") do |table|
    table.hashes.each do |product|
      category = Category.find_by(name: product[:category])
      product.except!('category')
      FactoryBot.create(:product, product.merge(category: category)) 
    end
  end

  Given("the following category exists") do |table|
    table.hashes.each do |category|
      Category.create!(category)
  end
  end
  
  When("I visit the landing page") do
    visit root_path
  end
  
  Then("I should see {string}") do |content|
    expect(page).to have_content content
  end