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

ActiveRecord::Schema.define(version: 20170713173454) do

  create_table "bicycle_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicycles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "bicycle_categories_id"
    t.index ["bicycle_categories_id"], name: "index_bicycles_on_bicycle_categories_id", using: :btree
  end

  create_table "comment_and_likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "user_id"
    t.string   "comment"
    t.boolean  "like"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bicycles_id"
    t.index ["bicycles_id"], name: "index_comment_and_likes_on_bicycles_id", using: :btree
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bicycles_id"
    t.index ["bicycles_id"], name: "index_images_on_bicycles_id", using: :btree
  end

  add_foreign_key "bicycles", "bicycle_categories", column: "bicycle_categories_id"
end
