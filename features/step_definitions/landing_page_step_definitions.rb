Given("That I am on the landing page") do
    visit root_path  
end
  
Then("I should see {string}") do |message|
    expect(page).to have_content message
end

Then("I should see a navbar") do
    expect(page).to have_css '#navbar'
end