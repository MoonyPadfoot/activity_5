class CreateProducts< ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.boolean :available
      t.timestamp :released_at
      t.time :expiry_date
      t.integer :discount
      t.timestamps
    end
  end
end
