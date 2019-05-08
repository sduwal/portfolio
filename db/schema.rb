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

ActiveRecord::Schema.define(version: 2019_05_08_094349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses_educations", id: false, force: :cascade do |t|
    t.bigint "education_id", null: false
    t.bigint "address_id", null: false
  end

  create_table "addresses_experiences", id: false, force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.bigint "address_id", null: false
  end

  create_table "addresses_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "address_id", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "school"
    t.string "degree"
    t.string "field"
    t.date "from"
    t.date "to"
    t.integer "user_id"
    t.float "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.date "start"
    t.date "end"
    t.string "description"
    t.string "link"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personalawards", force: :cascade do |t|
    t.string "title"
    t.string "issuer"
    t.string "description"
    t.date "from"
    t.date "to"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personalprojects", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.string "description"
    t.string "occupation"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
