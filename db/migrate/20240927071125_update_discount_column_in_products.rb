class UpdateDiscountColumnInProducts < ActiveRecord::Migration[7.0]
  def change
    change_column(:products, :discount, :float)
  end
end
