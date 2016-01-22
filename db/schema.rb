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

ActiveRecord::Schema.define(version: 20160113233042) do

  create_table "book_notes", force: :cascade do |t|
    t.string   "title"
    t.integer  "book_id"
    t.integer  "user_id"
    t.integer  "page",         default: 1
    t.integer  "content_type", default: 0
    t.text     "content"
    t.integer  "pro",          default: 0
    t.integer  "con",          default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "picture_id"
  end

  add_index "book_notes", ["book_id"], name: "index_book_notes_on_book_id"
  add_index "book_notes", ["picture_id"], name: "index_book_notes_on_picture_id"
  add_index "book_notes", ["user_id"], name: "index_book_notes_on_user_id"

  create_table "book_reviews", force: :cascade do |t|
    t.string   "title"
    t.integer  "book_id"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "pro",        default: 0
    t.integer  "con",        default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "book_reviews", ["book_id"], name: "index_book_reviews_on_book_id"
  add_index "book_reviews", ["user_id"], name: "index_book_reviews_on_user_id"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author",       default: "网络"
    t.date     "publish_time"
    t.string   "version",      default: "1.0"
    t.string   "filepath"
    t.integer  "pro",          default: 0
    t.integer  "con",          default: 0
    t.integer  "difficulty",   default: 5
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "clicks",       default: 0
    t.text     "description"
    t.integer  "picture_id"
  end

  add_index "books", ["picture_id"], name: "index_books_on_picture_id"

  create_table "contributions", force: :cascade do |t|
    t.integer  "content_type"
    t.integer  "content_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "coursebooks", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "coursebooks", ["book_id"], name: "index_coursebooks_on_book_id"
  add_index "coursebooks", ["course_id"], name: "index_coursebooks_on_course_id"

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.string   "school"
    t.date     "time"
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "clicks",      default: 0
    t.integer  "picture_id"
  end

  add_index "courses", ["picture_id"], name: "index_courses_on_picture_id"

  create_table "globalinfos", force: :cascade do |t|
    t.string   "title"
    t.string   "publisher",  default: "Admin"
    t.text     "content"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "comment"
    t.string   "name"
    t.string   "content_type"
    t.binary   "data"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "userbooks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "userbooks", ["book_id"], name: "index_userbooks_on_book_id"
  add_index "userbooks", ["user_id"], name: "index_userbooks_on_user_id"

  create_table "usercourses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "usercourses", ["course_id"], name: "index_usercourses_on_course_id"
  add_index "usercourses", ["user_id"], name: "index_usercourses_on_user_id"

  create_table "userinfos", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "publisher"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "userinfos", ["user_id"], name: "index_userinfos_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "nickname"
    t.integer  "level",           default: 0
    t.integer  "score",           default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
