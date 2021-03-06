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

ActiveRecord::Schema.define(version: 20180131120843) do

  create_table "analytics", force: :cascade do |t|
    t.integer  "visits"
    t.integer  "views"
    t.string   "campaign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exporters", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_exporters_on_email", unique: true
    t.index ["name"], name: "index_exporters_on_name"
  end

  create_table "insurances", force: :cascade do |t|
    t.integer  "grade"
    t.string   "status"
    t.integer  "exporter_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exporter_id"], name: "index_insurances_on_exporter_id"
    t.index ["grade"], name: "index_insurances_on_grade"
  end

end
