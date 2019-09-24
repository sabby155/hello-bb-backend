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

ActiveRecord::Schema.define(version: 2019_06_05_210803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babies", force: :cascade do |t|
    t.string "relationship"
    t.string "first_name"
    t.string "last_name"
    t.string "birth_date"
    t.string "delivered_in"
    t.string "delivered_by"
    t.string "weight"
    t.string "height"
    t.string "horoscope_sign"
    t.string "first_address"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_babies_on_user_id"
  end

  create_table "baby_milestones", force: :cascade do |t|
    t.string "date"
    t.string "caption"
    t.string "link"
    t.bigint "baby_id"
    t.bigint "milestone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baby_id"], name: "index_baby_milestones_on_baby_id"
    t.index ["milestone_id"], name: "index_baby_milestones_on_milestone_id"
  end

  create_table "letters", force: :cascade do |t|
    t.string "content"
    t.bigint "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baby_id"], name: "index_letters_on_baby_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "link"
    t.string "caption"
    t.string "date"
    t.bigint "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baby_id"], name: "index_media_on_baby_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "first_smile"
    t.string "first_laugh"
    t.string "first_walk"
    t.string "first_food"
    t.string "first_crawl"
    t.string "first_tooth"
    t.string "first_sitting_up"
    t.string "first_word"
    t.string "first_outing"
    t.string "fave_food"
    t.string "fave_song"
    t.string "fave_toy"
    t.string "fave_book"
    t.string "fave_blanket"
    t.string "fave_outfit"
    t.string "fave_activity"
    t.string "fave_game"
    t.string "fave_show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "babies", "users"
  add_foreign_key "baby_milestones", "babies"
  add_foreign_key "baby_milestones", "milestones"
  add_foreign_key "letters", "babies"
  add_foreign_key "media", "babies"
end
