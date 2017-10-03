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

ActiveRecord::Schema.define(version: 20171003192901) do

  create_table "items", force: :cascade do |t|
    t.integer "kitchen_id"
    t.string "name"
    t.integer "student_id"
    t.date "exp_date"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "storage_id"
    t.boolean "alert_sent", default: false
  end

  create_table "kegs", force: :cascade do |t|
    t.integer "kitchen_id"
    t.string "type"
    t.date "date_changed"
    t.date "date_finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount_full"
  end

  create_table "kitchens", force: :cascade do |t|
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.integer "kitchen_id"
    t.integer "storage_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "slack_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
