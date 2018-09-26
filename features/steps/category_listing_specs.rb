Given("the following categories exist") do |table|
    table.hashes.each do |category|
      Category.create!(category)
  end
end