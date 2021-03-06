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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130418201705) do

  create_table "contacts", :force => true do |t|
    t.string   "pnamef"
    t.string   "pnamel"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.date     "entrydate"
    t.date     "exitdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entrants", :force => true do |t|
    t.string   "cnamef"
    t.string   "cnamel"
    t.integer  "contact_id"
    t.date     "dob"
    t.string   "grade"
    t.integer  "shelterid"
    t.string   "mnres"
    t.integer  "lastschool_id"
    t.integer  "shelterschool"
    t.integer  "mpsschool_id"
    t.integer  "nonmpsschool"
    t.text     "note"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "studentid"
    t.string   "bus"
    t.string   "lastcity"
    t.string   "laststate"
    t.string   "discovery"
    t.string   "transport"
    t.string   "language"
  end

  create_table "entrants_needs", :force => true do |t|
    t.integer "need_id"
    t.integer "entrant_id"
  end

  create_table "needs", :force => true do |t|
    t.string "item"
  end

  create_table "reports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "schoolname"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "officephone"
    t.string   "sswname"
    t.string   "sswphone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shelters", :force => true do |t|
    t.string   "sheltername"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stays", :force => true do |t|
    t.integer  "entrant_id"
    t.integer  "shelter_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.date     "entrydate"
    t.date     "exitdate"
    t.integer  "totaldays"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
