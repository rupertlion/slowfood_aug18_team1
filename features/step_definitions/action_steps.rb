Then("I click on the billing checkbox") do
    find('.checkbox-icon').click
end
  
Then("I select a country option") do 
    find(".form-control[id='country']").select_option
end