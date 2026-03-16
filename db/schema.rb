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

ActiveRecord::Schema[8.1].define(version: 2026_03_16_172422) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "tasks", force: :cascade do |t|
    t.string "body"
    t.datetime "created_at", null: false
    t.virtual "textsearchable_index_col", type: :tsvector, as: "to_tsvector('english'::regconfig, ((body)::text || ' '::text))", stored: true
    t.datetime "updated_at", null: false
    t.index ["textsearchable_index_col"], name: "tasks_idx", using: :gin
  end
end
