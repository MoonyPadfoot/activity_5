class Category < ApplicationRecord
  has_many :product_category_ships
  has_many :products, through: :product_category_ships
end
