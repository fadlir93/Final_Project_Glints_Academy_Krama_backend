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

ActiveRecord::Schema.define(version: 2018_11_30_075135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.text "username"
    t.text "email"
    t.text "password"
  end

  create_table "events", force: :cascade do |t|
    t.string "title_event"
    t.string "desc_event"
    t.string "img_event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "title_place"
    t.string "desc_place"
    t.string "img_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules", force: :cascade do |t|
    t.string "desc_rules"
    t.string "img_rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rulesevents", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "rule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_rulesevents_on_event_id"
    t.index ["rule_id"], name: "index_rulesevents_on_rule_id"
  end

  create_table "rulesplaces", force: :cascade do |t|
    t.bigint "place_id"
    t.bigint "rule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_rulesplaces_on_place_id"
    t.index ["rule_id"], name: "index_rulesplaces_on_rule_id"
  end

  add_foreign_key "rulesevents", "events"
  add_foreign_key "rulesevents", "rules"
  add_foreign_key "rulesplaces", "places"
  add_foreign_key "rulesplaces", "rules"
end
