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

ActiveRecord::Schema.define(version: 2018_12_28_163743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.bigint "god_id"
    t.string "cooldown"
    t.string "cost"
    t.text "description"
    t.string "summary"
    t.jsonb "menu_items"
    t.jsonb "rank_items"
    t.text "secondary_description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tier"
    t.index ["god_id"], name: "index_abilities_on_god_id"
  end

  create_table "gods", force: :cascade do |t|
    t.decimal "attack_speed"
    t.decimal "attack_speed_per_level"
    t.string "cons"
    t.decimal "hp5_per_level"
    t.integer "health"
    t.integer "health_per_five"
    t.integer "health_per_level"
    t.text "lore"
    t.decimal "mp5_per_level"
    t.integer "magic_protection"
    t.decimal "magic_protection_per_level"
    t.integer "magical_power"
    t.decimal "magical_power_per_level"
    t.integer "mana"
    t.decimal "mana_per_five"
    t.integer "mana_per_level"
    t.string "name"
    t.string "free_rotation"
    t.string "pantheon"
    t.integer "physical_power"
    t.decimal "physical_power_per_level"
    t.integer "physical_protection"
    t.decimal "physical_protection_per_level"
    t.string "pros"
    t.string "roles"
    t.integer "speed"
    t.string "title"
    t.string "god_type"
    t.string "god_card_url"
    t.string "god_icon_url"
    t.string "latest_god"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "abilities", "gods"
end
