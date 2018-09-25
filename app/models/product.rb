class Product < ApplicationRecord
    belongs_to :categories
        validates :name, presence: true
        validates :description, presence: true
        validates :price, presence: true
        validates :categories_id, presence: true
end