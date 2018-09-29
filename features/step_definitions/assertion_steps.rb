Then("I should see a navbar") do
    expect(page).to have_css '#navbar'
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I see the message {string}") do |content|
    expect(page).to have_content content 
end

Then("I am on the signup page") do
    expect(page.current_path).to eq new_user_registration_path
end

Then("I am on the checkout page") do
    expect(current_path).to eq cartify.cart_path
end
  
Then("I am on the login page") do
    expect(page.current_path).to eq new_user_session_path
end