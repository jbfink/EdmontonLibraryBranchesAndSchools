# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140524180648) do

  create_table "branches", force: true do |t|
    t.string   "branch_id"
    t.string   "branch_name"
    t.string   "address"
    t.string   "postal_code"
    t.string   "phone"
    t.string   "free_wifi"
    t.string   "monday_open"
    t.string   "monday_close"
    t.string   "tuesday_open"
    t.string   "tuesday_close"
    t.string   "wednesday_open"
    t.string   "wednesday_close"
    t.string   "thursday_open"
    t.string   "thursday_close"
    t.string   "friday_open"
    t.string   "friday_close"
    t.string   "saturday_open"
    t.string   "saturday_close"
    t.string   "sunday_open"
    t.string   "sunday_close"
    t.decimal  "latitude",        precision: 10, scale: 6
    t.decimal  "longitude",       precision: 10, scale: 6
    t.string   "coordinates"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.integer  "school_number"
    t.string   "school_name"
    t.string   "address"
    t.string   "postal_code"
    t.string   "ward"
    t.string   "website"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "grade_level"
    t.string   "grades_offered"
    t.string   "programs"
    t.decimal  "latitude",       precision: 10, scale: 6
    t.decimal  "longitude",      precision: 10, scale: 6
    t.string   "coordinates"
    t.string   "school_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
