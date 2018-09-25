class AddCategoriesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :categories, index: true, foreign_key: true
  end
end