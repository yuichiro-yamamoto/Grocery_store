# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_09_061839) do

  create_table "admin_users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
  end

  create_table "end_addresses", force: :cascade do |t|
    t.integer "postal_code", null: false
    t.string "address", null: false
    t.string "destination_name", null: false
    t.integer "telephone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_cart_items", force: :cascade do |t|
    t.integer "purchase_number", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_purchase_details", force: :cascade do |t|
    t.string "item_image_history_id", null: false
    t.string "item_name_history", null: false
    t.integer "telephone_number_history", null: false
    t.integer "item_price_history", null: false
    t.integer "purchase_number_history", null: false
    t.integer "postal_code_history", null: false
    t.string "address_history", null: false
    t.string "destination_name_history", null: false
    t.string "delivery_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_purchase_histories", force: :cascade do |t|
    t.integer "total_cost", null: false
    t.integer "delivery_fee", null: false
    t.integer "cousumption_tax", null: false
    t.integer "total_item_cost", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.integer "postal_code", null: false
    t.string "address", null: false
    t.integer "telephone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_end_users_on_name"
  end

  create_table "items", force: :cascade do |t|
    t.integer "price", null: false
    t.text "item_explain", null: false
    t.integer "stock", null: false
    t.integer "item_image_id", null: false
    t.integer "sales_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
