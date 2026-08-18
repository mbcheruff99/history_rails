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

ActiveRecord::Schema[8.1].define(version: 2026_08_18_012346) do
  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "date_display"
    t.integer "end_year"
    t.string "image"
    t.string "name"
    t.integer "start_year"
    t.text "summary"
    t.integer "topic_id", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_events_on_topic_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "continent"
    t.string "country"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "image"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.text "biography"
    t.integer "birth_year"
    t.datetime "created_at", null: false
    t.string "date_display"
    t.integer "death_year"
    t.string "image"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "author"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "link"
    t.string "organization"
    t.string "source_type"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "end_year"
    t.string "image"
    t.integer "start_year"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "topics"
end
