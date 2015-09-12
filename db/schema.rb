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

ActiveRecord::Schema.define(version: 20150912104624) do

  create_table "articles", force: true do |t|
    t.text     "text"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", force: true do |t|
    t.string "name"
    t.string "location"
    t.string "city"
  end

  create_table "jobs", force: true do |t|
    t.string  "position"
    t.text    "description"
    t.date    "started_at"
    t.date    "ended_at"
    t.integer "user_id"
    t.integer "employer_id"
    t.integer "sector_id"
    t.string  "authentication_token"
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id", using: :btree
  add_index "jobs", ["sector_id"], name: "index_jobs_on_sector_id", using: :btree
  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id", using: :btree

  create_table "offers", force: true do |t|
    t.string   "position"
    t.integer  "employer_id"
    t.date     "started_at"
    t.date     "ended_at"
    t.integer  "sector_id"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  add_index "offers", ["created_by_id"], name: "index_offers_on_created_by_id", using: :btree
  add_index "offers", ["employer_id"], name: "index_offers_on_employer_id", using: :btree
  add_index "offers", ["sector_id"], name: "index_offers_on_sector_id", using: :btree

  create_table "posts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recommendations", force: true do |t|
    t.integer "note"
    t.string  "comment"
  end

  create_table "sectors", force: true do |t|
    t.string "code"
  end

  create_table "travels", force: true do |t|
    t.string  "visit"
    t.string  "departure_point"
    t.string  "arrival_point"
    t.date    "started_at"
    t.date    "ended_at"
    t.string  "cotraveller"
    t.string  "memory"
    t.integer "score"
    t.string  "authentication_token"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.date     "birth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "job"
    t.integer  "phone"
    t.string   "email",                              default: "",    null: false
    t.string   "encrypted_password",     limit: 128, default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "country"
    t.boolean  "driving_licence"
    t.string   "linkedin_url"
    t.text     "about_me"
    t.string   "current_location"
    t.string   "headline"
    t.text     "skills"
    t.integer  "employer_id"
    t.boolean  "admin",                              default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["employer_id"], name: "index_users_on_employer_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
