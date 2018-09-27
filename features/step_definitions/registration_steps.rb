Then("I am on the signup page") do
    expect(page.current_path).to eq new_user_registration
end