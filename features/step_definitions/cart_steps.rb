Given("the user is logged in") do
    user_signed_in?
end
  
Then("I am on the cart page") do
    expect(page.current_path).to eq cart_path
end