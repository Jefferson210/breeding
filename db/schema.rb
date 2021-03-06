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

ActiveRecord::Schema.define(version: 20161116234737) do

  create_table "children", force: true do |t|
    t.integer  "crossing_id"
    t.integer  "numIndividuals"
    t.integer  "color_id"
    t.decimal  "headSize"
    t.integer  "numFlowering"
    t.integer  "numPetals"
    t.string   "form"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "children", ["color_id"], name: "index_children_on_color_id"
  add_index "children", ["crossing_id"], name: "index_children_on_crossing_id"

  create_table "colors", force: true do |t|
    t.string   "colorName"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crossings", force: true do |t|
    t.string   "codeCrossing"
    t.integer  "numCrossing"
    t.integer  "year"
    t.integer  "week"
    t.string   "effective"
    t.decimal  "percentageEffective"
    t.string   "dateHarvest"
    t.integer  "numSeed"
    t.string   "father"
    t.string   "fatherPicture"
    t.string   "mother"
    t.string   "motherPicture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genetic_banks", force: true do |t|
    t.string   "codeBreeder"
    t.string   "breeder"
    t.integer  "analysedYear"
    t.string   "status"
    t.string   "variety"
    t.integer  "numPlants"
    t.boolean  "scent"
    t.decimal  "headSize"
    t.integer  "petals"
    t.string   "steamLength"
    t.decimal  "production"
    t.decimal  "opening"
    t.text     "flowerAbnormality"
    t.string   "sheets"
    t.string   "hawthorn"
    t.string   "relationship"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "color_id"
  end

  add_index "genetic_banks", ["color_id"], name: "index_genetic_banks_on_color_id"

  create_table "sowings", force: true do |t|
    t.string   "origin"
    t.integer  "numSeed"
    t.decimal  "weight",      precision: 5, scale: 2
    t.integer  "week"
    t.boolean  "hydratation"
    t.date     "calendar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
