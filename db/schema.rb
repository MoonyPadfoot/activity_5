# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_10_10_093334) do
  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engagements", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_engagements_on_product_id"
    t.index ["user_id"], name: "index_engagements_on_user_id"
  end

  create_table "manufacturers", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_manufacturers_on_product_id"
  end

  create_table "order_items", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.decimal "price", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "product_category_ships", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_product_category_ships_on_category_id"
    t.index ["product_id"], name: "index_product_category_ships_on_product_id"
  end

  create_table "product_supplier_ships", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_supplier_ships_on_product_id"
    t.index ["supplier_id"], name: "index_product_supplier_ships_on_supplier_id"
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.integer "quantity"
    t.decimal "price", precision: 10
    t.boolean "available"
    t.timestamp "released_at"
    t.float "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "reviews", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.bigint "user_id", null: false
    t.index ["product_id"], name: "index_reviews_on_product_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "suppliers", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_suppliers_on_product_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "warranties", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.integer "duration"
    t.text "terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_warranties_on_product_id"
  end

  add_foreign_key "manufacturers", "products"
  add_foreign_key "order_items", "products"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
  add_foreign_key "suppliers", "products"
  add_foreign_key "warranties", "products"
end
