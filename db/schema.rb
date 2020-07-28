# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_28_020043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "logs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "water"
    t.integer "mood"
    t.string "title"
    t.date "start"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "log_id"
    t.time "time"
    t.string "name"
  end

  create_table "sleeps", force: :cascade do |t|
    t.integer "log_id"
    t.time "start_time"
    t.time "end_time"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
  end

end
