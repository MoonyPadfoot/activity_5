class CreateProductCategoryShips < ActiveRecord::Migration[7.0]
  def change
    create_table :product_category_ships do |t|
      t.references :product
      t.references :category

      t.timestamps
    end
  end
end
