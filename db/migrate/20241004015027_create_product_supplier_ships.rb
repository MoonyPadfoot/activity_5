class CreateProductSupplierShips < ActiveRecord::Migration[7.0]
  def change
    create_table :product_supplier_ships do |t|
      t.references :product
      t.references :supplier

      t.timestamps
    end
  end
end
