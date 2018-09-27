Given("the following registered users exist") do |table|
    table.hashes.each do |user|
        create(:user, user)
    end
end
  
Given("I click on the {string} link") do |link|
    click_on link
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content    
end

Then("I see the message {string}") do |content|
    expect(page.current_path).to have_content content 
end

Then("I am on the {string} page") do |login|
    expect(page.current_path).to eq login_path(login)
end