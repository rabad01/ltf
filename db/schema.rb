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

ActiveRecord::Schema.define(version: 20170831062439) do

  create_table "active_ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "description"
    t.boolean "under_insurance"
    t.decimal "insurance_coverage", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "address"
    t.string "tel", limit: 15
    t.string "cel", limit: 15
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "province_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["province_id"], name: "index_communities_on_province_id"
  end

  create_table "countries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drug_ars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "drug_store_id"
    t.bigint "ar_id"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ar_id"], name: "index_drug_ars_on_ar_id"
    t.index ["drug_store_id"], name: "index_drug_ars_on_drug_store_id"
  end

  create_table "drug_store_prices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "product_id"
    t.bigint "drug_store_id"
    t.decimal "price", precision: 12, scale: 5
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_store_id"], name: "index_drug_store_prices_on_drug_store_id"
    t.index ["product_id"], name: "index_drug_store_prices_on_product_id"
  end

  create_table "drug_stores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "address"
    t.bigint "location_id"
    t.string "tel1", limit: 15
    t.string "tel2", limit: 15
    t.string "cel", limit: 15
    t.string "email"
    t.string "contact"
    t.time "hour_open_regular"
    t.time "hour_close_regular"
    t.string "days_regular"
    t.time "hour_open_other"
    t.time "hour_close_other"
    t.string "days_other"
    t.string "logo_file_name"
    t.string "store_type"
    t.bigint "holding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "cash_acepted"
    t.boolean "card_acepted"
    t.index ["holding_id"], name: "index_drug_stores_on_holding_id"
    t.index ["location_id"], name: "index_drug_stores_on_location_id"
  end

  create_table "holdings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "address"
    t.string "tel", limit: 15
    t.string "cel", limit: 15
    t.string "logo_file_name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_locations_on_community_id"
  end

  create_table "order_item_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.bigint "drug_store_id"
    t.bigint "payment_method_id"
    t.decimal "quantity", precision: 10
    t.decimal "unit_price", precision: 12, scale: 5
    t.decimal "total", precision: 12, scale: 5
    t.text "comment"
    t.bigint "order_item_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "use_insurance"
    t.index ["drug_store_id"], name: "index_order_items_on_drug_store_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["order_item_status_id"], name: "index_order_items_on_order_item_status_id"
    t.index ["payment_method_id"], name: "index_order_items_on_payment_method_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "order_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "user_id"
    t.bigint "order_status_id"
    t.decimal "total_insured", precision: 12, scale: 5
    t.decimal "total_not_insured", precision: 12, scale: 5
    t.decimal "total_order", precision: 12, scale: 5
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payment_methods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "description"
    t.bigint "active_ingredient_id"
    t.string "metric"
    t.decimal "dosage", precision: 10
    t.bigint "lab_id"
    t.boolean "receipt_required"
    t.string "picture_file_name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active_ingredient_id"], name: "index_products_on_active_ingredient_id"
    t.index ["lab_id"], name: "index_products_on_lab_id"
  end

  create_table "provinces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_provinces_on_region_id"
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "userlogin"
    t.string "password"
    t.text "address"
    t.bigint "location_id"
    t.string "cel", limit: 15
    t.string "tel", limit: 15
    t.boolean "wspp_used"
    t.string "email"
    t.datetime "birthdate"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  add_foreign_key "communities", "provinces"
  add_foreign_key "drug_ars", "ars"
  add_foreign_key "drug_ars", "drug_stores"
  add_foreign_key "drug_store_prices", "drug_stores"
  add_foreign_key "drug_store_prices", "products"
  add_foreign_key "drug_stores", "holdings"
  add_foreign_key "drug_stores", "locations"
  add_foreign_key "locations", "communities"
  add_foreign_key "order_items", "drug_stores"
  add_foreign_key "order_items", "order_item_statuses"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "payment_methods"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "active_ingredients"
  add_foreign_key "products", "labs"
  add_foreign_key "provinces", "regions"
  add_foreign_key "regions", "countries"
  add_foreign_key "users", "locations"
end
