class Supplier < ApplicationRecord
  has_many :product_supplier_ships
  has_many :products, through: :product_supplier_ships
end