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

ActiveRecord::Schema.define(version: 20160912203606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bus_companies", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "cnh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
    t.integer  "person_id"
    t.index ["person_id"], name: "index_drivers_on_person_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "travel_id"
    t.index ["travel_id"], name: "index_events_on_travel_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "identity"
    t.string   "cpf"
    t.date     "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "registration"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "person_id"
    t.integer  "event_id"
    t.integer  "travel_id"
    t.index ["event_id"], name: "index_students_on_event_id", using: :btree
    t.index ["person_id"], name: "index_students_on_person_id", using: :btree
    t.index ["travel_id"], name: "index_students_on_travel_id", using: :btree
  end

  create_table "travels", force: :cascade do |t|
    t.string   "name"
    t.date     "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "seat"
    t.integer  "number"
    t.float    "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "travel_id"
    t.integer  "bus_company_id"
    t.index ["bus_company_id"], name: "index_vehicles_on_bus_company_id", using: :btree
    t.index ["travel_id"], name: "index_vehicles_on_travel_id", using: :btree
  end

  add_foreign_key "drivers", "people"
  add_foreign_key "events", "travels"
  add_foreign_key "students", "events"
  add_foreign_key "students", "people"
  add_foreign_key "students", "travels"
  add_foreign_key "vehicles", "bus_companies"
  add_foreign_key "vehicles", "travels"
end
