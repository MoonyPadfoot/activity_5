class CreateWarranties < ActiveRecord::Migration[7.0]
  def change
    create_table :warranties do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :duration
      t.text :terms

      t.timestamps
    end
  end
end
