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

ActiveRecord::Schema[8.1].define(version: 2026_09_01_030231) do
  create_table "event_locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "event_id", null: false
    t.integer "location_id", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_locations_on_event_id"
    t.index ["location_id"], name: "index_event_locations_on_location_id"
  end

  create_table "event_people", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "event_id", null: false
    t.integer "person_id", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_people_on_event_id"
    t.index ["person_id"], name: "index_event_people_on_person_id"
  end

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

  create_table "person_locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "location_id", null: false
    t.integer "person_id", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_person_locations_on_location_id"
    t.index ["person_id", "location_id"], name: "index_person_locations_on_person_id_and_location_id", unique: true
    t.index ["person_id"], name: "index_person_locations_on_person_id"
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
    t.integer "year"
  end

  create_table "source_links", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "linkable_id", null: false
    t.string "linkable_type", null: false
    t.integer "resource_id", null: false
    t.datetime "updated_at", null: false
    t.index ["linkable_type", "linkable_id"], name: "index_source_links_on_linkable"
    t.index ["resource_id"], name: "index_source_links_on_resource_id"
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

  add_foreign_key "event_locations", "events"
  add_foreign_key "event_locations", "locations"
  add_foreign_key "event_people", "events"
  add_foreign_key "event_people", "people"
  add_foreign_key "events", "topics"
  add_foreign_key "person_locations", "locations"
  add_foreign_key "person_locations", "people"
  add_foreign_key "source_links", "resources"
end
