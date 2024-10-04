class CreateSupplier < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.references :product, null: false, foreign_key: true
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
