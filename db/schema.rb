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

ActiveRecord::Schema.define(version: 20180214170347) do

  create_table "books", force: :cascade do |t|
    t.string "book_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_characters", id: false, force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "book_id", null: false
    t.index ["character_id", "book_id"], name: "index_books_characters_on_character_id_and_book_id"
  end

  create_table "characterbooks", force: :cascade do |t|
    t.integer "character_id"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "house"
    t.integer "character_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters_locations", id: false, force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "location_id", null: false
    t.index ["character_id", "location_id"], name: "index_characters_locations_on_character_id_and_location_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.integer "episode_number"
    t.string "name"
    t.date "date"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "season_id"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "continent"
    t.string "city"
    t.integer "character_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "season_number"
    t.date "premiere_date"
    t.date "end_date"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
