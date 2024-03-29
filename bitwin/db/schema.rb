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

ActiveRecord::Schema.define(version: 20141126025859) do

  create_table "gambles", force: true do |t|
    t.integer  "user_id"
    t.integer  "firstChosen"
    t.integer  "secondChosen"
    t.integer  "thirdChosen"
    t.integer  "fourthChosen"
    t.integer  "fifthChosen"
    t.integer  "firstRaffled"
    t.integer  "secondRaffled"
    t.integer  "thirdRaffled"
    t.integer  "fourthRaffled"
    t.integer  "fifthRaffled"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profit"
  end

  add_index "gambles", ["user_id"], name: "index_gambles_on_user_id"

  create_table "shoppings", force: true do |t|
    t.integer  "amount"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppings", ["user_id"], name: "index_shoppings_on_user_id"

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.integer  "coins"
    t.string   "walletNmb"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["mail"], name: "index_users_on_mail", unique: true
  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true
  add_index "users", ["walletNmb"], name: "index_users_on_walletNmb", unique: true

end
