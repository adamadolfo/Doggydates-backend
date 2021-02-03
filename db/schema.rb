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

ActiveRecord::Schema.define(version: 2021_02_03_182849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "gender"
    t.string "gets_along_with"
    t.string "temperament"
    t.integer "great_date"
    t.string "dominate_submissive"
    t.string "leash"
    t.string "one_on_one_group"
    t.string "enjoys"
    t.string "dislikes"
    t.string "adopted_breeder"
    t.string "img_url"
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "age"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.string "age_preference"
    t.string "friendship_type"
    t.string "owner_exp"
    t.string "gender_preference"
    t.string "looking_for"
    t.string "city"
    t.string "state"
    t.string "willing_mile_radius"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
