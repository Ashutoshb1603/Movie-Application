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

ActiveRecord::Schema[7.0].define(version: 2022_10_06_112444) do
  create_table "countries", force: :cascade do |t|
    t.integer "country_iso_code"
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generes", force: :cascade do |t|
    t.text "genere_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string "keyword_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_roles", force: :cascade do |t|
    t.string "language_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "language_code"
    t.string "language_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_generes", force: :cascade do |t|
    t.integer "genere_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genere_id"], name: "index_movie_generes_on_genere_id"
    t.index ["movie_id"], name: "index_movie_generes_on_movie_id"
  end

  create_table "movie_keywords", force: :cascade do |t|
    t.integer "keyword_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyword_id"], name: "index_movie_keywords_on_keyword_id"
    t.index ["movie_id"], name: "index_movie_keywords_on_movie_id"
  end

  create_table "movie_languages", force: :cascade do |t|
    t.integer "language_role_id"
    t.integer "movie_id"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "budget"
    t.integer "homepage"
    t.text "overview"
    t.string "popularity"
    t.datetime "release_date"
    t.integer "revenue"
    t.string "runtime"
    t.string "movie_status"
    t.string "tagline"
    t.integer "votes_count"
    t.integer "votes_avg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_countries", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "movie_generes", "generes"
  add_foreign_key "movie_generes", "movies"
  add_foreign_key "movie_keywords", "keywords"
  add_foreign_key "movie_keywords", "movies"
end
