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

ActiveRecord::Schema.define(version: 20170208135922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "lat"
    t.decimal  "lng"
    t.string   "default_img"
    t.string   "img1"
    t.string   "img2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "score"
  end

  create_table "image_uploaders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tours", force: :cascade do |t|
    t.string   "name"
    t.string   "tour_type"
    t.text     "description"
    t.string   "default_img"
    t.string   "img1"
    t.string   "img2"
    t.decimal  "lat"
    t.decimal  "lng"
    t.string   "day_of_week"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "image_data"
  end

  create_table "trips", force: :cascade do |t|
    t.string   "name"
    t.integer  "destination_id"
    t.integer  "user_id"
    t.date     "from_date"
    t.date     "to_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "destination"
    t.index ["destination_id"], name: "index_trips_on_destination_id", using: :btree
    t.index ["user_id"], name: "index_trips_on_user_id", using: :btree
  end

  create_table "user_tours", force: :cascade do |t|
    t.integer  "user_id_id"
    t.integer  "tour_id_id"
    t.integer  "trip_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id_id"], name: "index_user_tours_on_tour_id_id", using: :btree
    t.index ["trip_id_id"], name: "index_user_tours_on_trip_id_id", using: :btree
    t.index ["user_id_id"], name: "index_user_tours_on_user_id_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "is_provider",            default: false
    t.boolean  "is_admin"
    t.text     "bio"
    t.string   "from_location"
    t.string   "current_location"
    t.string   "username"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "provider"
    t.string   "uid"
    t.text     "image_data"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
