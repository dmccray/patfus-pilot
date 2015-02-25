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

ActiveRecord::Schema.define(version: 20150225071316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "input_types", force: :cascade do |t|
    t.string   "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "option_choices", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "option_type_id"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "option_choices", ["option_type_id"], name: "index_option_choices_on_option_type_id", using: :btree
  add_index "option_choices", ["question_id"], name: "index_option_choices_on_question_id", using: :btree

  create_table "option_types", force: :cascade do |t|
    t.string   "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_types", force: :cascade do |t|
    t.string   "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.integer  "organization_type_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "organizations", ["organization_type_id"], name: "index_organizations_on_organization_type_id", using: :btree

  create_table "qt_types", force: :cascade do |t|
    t.string   "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionnaire_sections", force: :cascade do |t|
    t.integer  "questionnaire_template_id"
    t.string   "name"
    t.string   "title"
    t.string   "subtitle"
    t.string   "required_yn",               limit: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "questionnaire_sections", ["questionnaire_template_id"], name: "index_questionnaire_sections_on_questionnaire_template_id", using: :btree

  create_table "questionnaire_templates", force: :cascade do |t|
    t.string   "name"
    t.integer  "qt_type_id"
    t.text     "instructions"
    t.text     "comments"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "questionnaire_templates", ["qt_type_id"], name: "index_questionnaire_templates_on_qt_type_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.integer  "questionnaire_sections_id"
    t.string   "name"
    t.string   "subtext"
    t.integer  "input_type_id"
    t.integer  "unit_type_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "questions", ["input_type_id"], name: "index_questions_on_input_type_id", using: :btree
  add_index "questions", ["questionnaire_sections_id"], name: "index_questions_on_questionnaire_sections_id", using: :btree
  add_index "questions", ["unit_type_id"], name: "index_questions_on_unit_type_id", using: :btree

  create_table "unit_types", force: :cascade do |t|
    t.string   "descr"
    t.string   "abbr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "username"
    t.string   "password"
    t.datetime "last_login"
    t.datetime "start_date"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["organization_id"], name: "index_users_on_organization_id", using: :btree

end
