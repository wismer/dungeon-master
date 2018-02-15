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

ActiveRecord::Schema.define(version: 20180214194615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_slug"
    t.string "setting"
    t.string "areas_of_interest", array: true
    t.string "desc"
  end

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.bigint "player_id"
    t.string "name"
    t.integer "level"
    t.integer "strength"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "dexterity"
    t.integer "charisma"
    t.integer "wisdom"
    t.string "trained_skills", array: true
    t.integer "max_hp"
    t.integer "current_hp"
    t.boolean "is_npc", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "race_id"
    t.bigint "character_class_id"
    t.bigint "campaign_id"
    t.index ["campaign_id"], name: "index_characters_on_campaign_id"
    t.index ["character_class_id"], name: "index_characters_on_character_class_id"
    t.index ["player_id"], name: "index_characters_on_player_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "places", force: :cascade do |t|
    t.bigint "campaign_id"
    t.string "name"
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_places_on_campaign_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "campaign_id"
    t.index ["campaign_id"], name: "index_scenes_on_campaign_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "ability_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_skills_on_ability_id"
  end

  add_foreign_key "characters", "campaigns"
  add_foreign_key "characters", "character_classes"
  add_foreign_key "characters", "players"
  add_foreign_key "characters", "races"
end
