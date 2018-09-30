Then("I click on {string}") do |link|
    click_on link
end

Then("I should be on the delivery page") do
    expect(page).to have_current_path('/checkout/delivery')
end

Then("I click on the billing checkbox") do
    find('.checkbox-icon').click
end
  
Then("I select {string} and choose {string}") do |string, string2|
    find(".form-control[id='country']").select_option
end