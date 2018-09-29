Given("the user is logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Given("the following registered users exist") do |table|
    table.hashes.each do |user|
        create(:user, user)
    end
end

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