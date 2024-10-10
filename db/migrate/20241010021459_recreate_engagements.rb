class RecreateEngagements < ActiveRecord::Migration[7.0]
  create_table :engagements do |t|
    t.references :product
    t.references :user

    t.timestamps
  end
end
