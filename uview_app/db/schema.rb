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

ActiveRecord::Schema.define(version: 20160222181409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string   "rstrnt_name"
    t.integer  "avg_food"
    t.integer  "avg_service"
    t.integer  "avg_ambiance"
    t.string   "tags"
    t.string   "address"
    t.string   "phone_num"
    t.integer  "num_reviews"
    t.string   "hours"
    t.string   "rstrnt_site"
    t.string   "review_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "food_rating"
    t.integer  "service_rating"
    t.integer  "ambiance_rating"
    t.text     "review_content"
    t.integer  "reviewer_revs"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.integer  "num_reviews"
    t.text     "about_me"
    t.boolean  "is_owner"
    t.boolean  "is_top_rev"
    t.string   "review_id"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
