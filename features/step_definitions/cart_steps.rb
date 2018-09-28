Given("the user is logged in as {string}") do |email|
    user = create(:user)
    login_as(user, scope: :user)
end
  
Then("I am on the cart page") do
    expect(page.current_path).to eq cart_path
end