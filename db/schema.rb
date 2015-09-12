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

ActiveRecord::Schema.define(version: 20150911225253) do

  create_table "banks", force: :cascade do |t|
    t.integer "account_number", limit: 8
    t.string "name"
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "alias"
    t.string "address"
    t.string "email"
    t.string "telephone"
    t.boolean "is_forwarder"
    t.integer "customer_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deposits", force: :cascade do |t|
    t.integer "bank_id"
    t.date "date"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "deposits", ["bank_id"], name: "index_deposits_on_bank_id"

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "id_number"
    t.string "address"
    t.date "date_of_birth"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forwarders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "alias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freight_bills", force: :cascade do |t|
    t.string "invoice_number"
    t.integer "shipper_id"
    t.date "date"
    t.decimal "total_weight_in_lbs"
    t.decimal "total_volume_in_cft"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "freight_bills", ["shipper_id"], name: "index_freight_bills_on_shipper_id"

  create_table "logistics", force: :cascade do |t|
    t.string "logistic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "tracking_id"
    t.integer "customer_id"
    t.decimal "length_in_inches"
    t.decimal "width_in_inches"
    t.decimal "height_in_inches"
    t.decimal "weight_in_lbs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shipments", ["customer_id"], name: "index_shipments_on_customer_id"
  add_index "shipments", ["tracking_id"], name: "index_shipments_on_tracking_id"

  create_table "shippers", force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "help"
    t.string "me"
    t.string "fak"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trackings", force: :cascade do |t|
    t.string "tracking_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "logistic_id"
  end

  add_index "trackings", ["logistic_id"], name: "index_trackings_on_logistic_id"

end
