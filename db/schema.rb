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

ActiveRecord::Schema.define(version: 2022_01_04_101118) do

  create_table "account_transactions", force: :cascade do |t|
    t.datetime "date"
    t.string "trans_type"
    t.decimal "amount"
    t.integer "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_account_transactions_on_account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "act_name"
    t.integer "act_num"
    t.string "act_type"
    t.decimal "balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# Could not dump table "transactions" because of following StandardError
#   Unknown type 'reference' for column 'accounts'

  add_foreign_key "account_transactions", "accounts"
end
