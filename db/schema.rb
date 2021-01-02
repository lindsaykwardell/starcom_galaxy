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

ActiveRecord::Schema.define(version: 2021_01_02_003416) do

  create_table "empires", force: :cascade do |t|
    t.string "empire_name"
    t.text "description"
    t.integer "credits"
    t.integer "industry"
    t.integer "research"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_empires_on_user_id"
  end

  create_table "systems", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.text "description"
    t.integer "credits_base"
    t.integer "industry_base"
    t.integer "research_base"
    t.integer "credits_production", default: 0
    t.integer "industry_production", default: 0
    t.integer "research_production", default: 0
    t.integer "empire_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empire_id"], name: "index_systems_on_empire_id"
    t.index ["location"], name: "index_systems_on_location", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "display_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "empires", "users"
  add_foreign_key "systems", "empires"
end
