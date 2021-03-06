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

ActiveRecord::Schema.define(version: 20160229194855) do

  create_table "exercise_sets", force: :cascade do |t|
    t.integer  "weight_kg"
    t.integer  "repetition"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "exercise_id"
    t.integer  "workout_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "main_muscles"
    t.string   "bodypart"
    t.string   "force"
    t.string   "mechanics_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "routine_sets", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "routine_id"
    t.integer  "sets"
    t.integer  "repetition"
    t.string   "rest_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "routines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.date     "date"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
