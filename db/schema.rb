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

ActiveRecord::Schema.define(version: 20160727131114) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "topic"
    t.string   "city"
    t.string   "country"
    t.string   "title"
    t.string   "body"
    t.string   "takeaways"
    t.string   "interviewed_people"
    t.string   "image"
    t.string   "video"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "store"
    t.string   "city"
    t.string   "country"
    t.string   "gender"
    t.string   "website"
    t.string   "image"
    t.string   "price"
    t.string   "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "country"
    t.string   "city"
    t.string   "bio"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.string   "title"
    t.string   "body"
    t.float    "rating"
    t.string   "image"
    t.string   "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
