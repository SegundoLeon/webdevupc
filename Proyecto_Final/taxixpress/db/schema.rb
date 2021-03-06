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

ActiveRecord::Schema.define(version: 20151004183650) do

  create_table "addresses", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "reference",   limit: 255
    t.string   "alias",       limit: 255
    t.boolean  "favourite",   limit: 1
    t.integer  "user_id",     limit: 4
    t.integer  "district_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "addresses", ["district_id"], name: "index_addresses_on_district_id", using: :btree
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "costs", force: :cascade do |t|
    t.integer  "estimated_cost",   limit: 4
    t.integer  "from_district_id", limit: 4
    t.integer  "to_district_id",   limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.string   "mobilephone",  limit: 255
    t.integer  "user_type_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "profiles", ["user_type_id"], name: "index_profiles_on_user_type_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.integer  "from_address_id",   limit: 4
    t.integer  "to_address_id",     limit: 4
    t.datetime "date_time"
    t.integer  "payment",           limit: 4
    t.integer  "passengers",        limit: 4
    t.integer  "vehicle_type_id",   limit: 4
    t.integer  "payment_method_id", limit: 4
    t.string   "service_code",      limit: 255
    t.integer  "vehicle_id",        limit: 4
    t.integer  "rate",              limit: 4
    t.text     "experience",        limit: 65535
    t.string   "status",            limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "services", ["payment_method_id"], name: "index_services_on_payment_method_id", using: :btree
  add_index "services", ["user_id"], name: "index_services_on_user_id", using: :btree
  add_index "services", ["vehicle_id"], name: "index_services_on_vehicle_id", using: :btree
  add_index "services", ["vehicle_type_id"], name: "index_services_on_vehicle_type_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,                default: "",    null: false
    t.string   "encrypted_password",     limit: 255,                default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,                  default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "name",                   limit: 255
    t.string   "surname",                limit: 255
    t.decimal  "mobilephone",                        precision: 10
    t.decimal  "phone",                              precision: 10
    t.datetime "date_of_birth"
    t.boolean  "is_female",              limit: 1,                  default: false
    t.string   "address",                limit: 255
    t.string   "marital_status",         limit: 255
    t.string   "company",                limit: 255
    t.integer  "user_type_id",           limit: 4,                  default: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

  create_table "vehicle_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "brand",           limit: 255
    t.string   "model",           limit: 255
    t.string   "plate",           limit: 255
    t.string   "status",          limit: 255
    t.integer  "user_id",         limit: 4
    t.integer  "vehicle_type_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "vehicles", ["user_id"], name: "index_vehicles_on_user_id", using: :btree
  add_index "vehicles", ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id", using: :btree

  add_foreign_key "addresses", "districts"
  add_foreign_key "addresses", "users"
  add_foreign_key "profiles", "user_types"
  add_foreign_key "services", "payment_methods"
  add_foreign_key "services", "users"
  add_foreign_key "services", "vehicle_types"
  add_foreign_key "services", "vehicles"
  add_foreign_key "users", "user_types"
  add_foreign_key "vehicles", "users"
  add_foreign_key "vehicles", "vehicle_types"
end
