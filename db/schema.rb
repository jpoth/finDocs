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

ActiveRecord::Schema.define(:version => 20130304034550) do

  create_table "documents", :force => true do |t|
    t.integer  "documentId"
    t.string   "name"
    t.date     "startDate"
    t.date     "endDate"
    t.float    "AmtInvested"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_docs", :id => false, :force => true do |t|
    t.integer "userId"
    t.integer "documentId"
  end

  create_table "user_logins", :force => true do |t|
    t.integer  "userId"
    t.string   "name"
    t.string   "password"
    t.date     "dateCreated"
    t.string   "Email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
