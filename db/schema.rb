# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151015181951) do

  create_table "banks", force: :cascade do |t|
    t.integer  "account_number", limit: 8
    t.string   "name"
    t.string   "currency"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "alias"
    t.string   "address"
    t.string   "email"
    t.string   "telephone"
    t.integer  "customer_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "deposits", force: :cascade do |t|
    t.integer  "bank_id"
    t.date     "date"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "deposits", ["bank_id"], name: "index_deposits_on_bank_id"

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "id_number"
    t.string   "address"
    t.date     "date_of_birth"
    t.string   "phone"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "forwarders", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "alias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freight_bills", force: :cascade do |t|
    t.string   "invoice_number"
    t.integer  "shipper_id"
    t.date     "date"
    t.decimal  "total_weight_in_lbs"
    t.decimal  "total_volume_in_cft"
    t.decimal  "cost"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "freight_bills", ["shipper_id"], name: "index_freight_bills_on_shipper_id"

  create_table "logistics", force: :cascade do |t|
    t.string   "logistic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.date     "date"
    t.string   "invoice_numbers"
    t.integer  "customer_id"
    t.integer  "order_id"
    t.string   "product_name"
    t.string   "product_description"
    t.string   "url"
    t.string   "size_color"
    t.integer  "quantity"
    t.decimal  "online_price"
    t.decimal  "tml_price"
    t.decimal  "estimated_weight"
    t.decimal  "length"
    t.decimal  "width"
    t.decimal  "height"
    t.boolean  "is_air_freight"
    t.date     "purchase_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "order_lines", ["customer_id"], name: "index_order_lines_on_customer_id"
  add_index "order_lines", ["order_id"], name: "index_order_lines_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.string   "order_number"
    t.string   "invoice_number"
    t.date     "order_date"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "shipments", force: :cascade do |t|
    t.integer  "tracking_id"
    t.integer  "customer_id"
    t.decimal  "length_in_inches"
    t.decimal  "width_in_inches"
    t.decimal  "height_in_inches"
    t.decimal  "weight_in_lbs"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "shipments", ["customer_id"], name: "index_shipments_on_customer_id"
  add_index "shipments", ["tracking_id"], name: "index_shipments_on_tracking_id"

  create_table "shippers", force: :cascade do |t|
    t.string   "company_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string   "help"
    t.string   "me"
    t.string   "fak"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trackings", force: :cascade do |t|
    t.string   "tracking_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "logistic_id"
    t.integer  "user_id"
  end

  add_index "trackings", ["logistic_id"], name: "index_trackings_on_logistic_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
