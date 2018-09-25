Given("the following category exists") do |table|
    table.hashes.each do |category|
        Category.create!(category)
        end
    end

