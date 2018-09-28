Given("the user is logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end
  
Then("I am on the checkout page") do
    expect(current_path).to eq cartify.cart_path
end