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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120804182104) do

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.text     "background"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "player_id"
  end

  add_index "characters", ["player_id"], :name => "index_characters_on_player_id"

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skillinstances", :force => true do |t|
    t.integer  "cp_spent"
    t.boolean  "active"
    t.integer  "rank"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "skill_id"
    t.integer  "character_id"
  end

  add_index "skillinstances", ["character_id"], :name => "index_skillinstances_on_character_id"
  add_index "skillinstances", ["skill_id"], :name => "index_skillinstances_on_skill_id"

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.integer  "cp_cost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
