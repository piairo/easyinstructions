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

ActiveRecord::Schema.define(version: 2019_07_23_221900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachements", force: :cascade do |t|
    t.string "photo"
    t.bigint "step_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["step_id"], name: "index_attachements_on_step_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_flats_on_owner_id"
  end

  create_table "steps", force: :cascade do |t|
    t.integer "number"
    t.text "description"
    t.string "picture_url"
    t.boolean "status"
    t.bigint "flat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_steps_on_flat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attachements", "steps"
  add_foreign_key "flats", "users", column: "owner_id"
  add_foreign_key "steps", "flats"
end
