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

ActiveRecord::Schema.define(version: 20180118044150) do

  create_table "companies", force: :cascade do |t|
    t.string "slug"
    t.string "name"
    t.integer "budget"
    t.integer "raised", default: 0
    t.date "timeline"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies_venture_capitalists", force: :cascade do |t|
    t.integer "company_id"
    t.integer "venture_capitalist_id"
    t.index ["company_id"], name: "index_companies_venture_capitalists_on_company_id"
    t.index ["venture_capitalist_id"], name: "index_companies_venture_capitalists_on_venture_capitalist_id"
  end

  create_table "notable_investments", force: :cascade do |t|
    t.integer "venture_capitalist_id"
    t.string "company"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venture_capitalist_id"], name: "index_notable_investments_on_venture_capitalist_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "venture_capitalist_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venture_capitalist_id"], name: "index_notes_on_venture_capitalist_id"
  end

  create_table "venture_capitalists", force: :cascade do |t|
    t.string "slug"
    t.integer "position"
    t.string "name"
    t.string "affiliation"
    t.string "website"
    t.string "contact"
    t.integer "check_size"
    t.integer "investments_per_year"
    t.string "status"
    t.string "location"
    t.string "potential"
    t.text "interests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
