Given("That I am on the landing page") do
    visit root_path  
end

Then("show me the page") do
    save_and_open_page
end

Given("I click on the {string} link") do |link|
    click_on link
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content    
end

Then("then I wait {int} seconds") do |seconds|
    sleep seconds
end 