Then("I click on the billing checkbox") do
    find('.checkbox-icon').click
end
  
Then("I select {string} and choose {string}") do |string, string2|
    find(".form-control[id='country']").select_option
end