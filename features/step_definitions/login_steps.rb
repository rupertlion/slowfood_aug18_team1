Given("the following registered users exist") do |table|
    table.hashes.each do |user|
        create(:user, user)
    end
end
  
Then("I am on the login page") do
    expect(page.current_path).to eq new_user_session_path
end