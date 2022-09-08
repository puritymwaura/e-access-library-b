# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_08_170819) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.text "description"
    t.integer "cost"
    t.integer "customer_id"
    t.string "book_id"
    t.integer "genre_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "preference"
  end

  create_table "genre", force: :cascade do |t|
    t.string "horror"
    t.string "romance"
    t.string "sci_fi"
    t.string "fiction"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "age"
    t.string "book_title"
    t.integer "customer_id"
  end

end
