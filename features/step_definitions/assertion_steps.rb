Then("I should see a navbar") do
    expect(page).to have_css '#navbar'
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I see the message {string}") do |content|
    expect(page).to have_content content 
end