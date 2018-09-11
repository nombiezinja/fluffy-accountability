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

ActiveRecord::Schema.define(version: 2018_09_10_235138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accountability_periods", force: :cascade do |t|
    t.bigint "pair_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "end_time"
    t.bigint "created_by_id", null: false
    t.bigint "validated_by_id"
    t.index ["created_by_id"], name: "index_accountability_periods_on_created_by_id"
    t.index ["pair_id"], name: "index_accountability_periods_on_pair_id"
    t.index ["validated_by_id"], name: "index_accountability_periods_on_validated_by_id"
  end

  create_table "agreements", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "pair_id", null: false
    t.bigint "created_by_id", null: false
    t.bigint "validated_by_id"
    t.index ["created_by_id"], name: "index_agreements_on_created_by_id"
    t.index ["pair_id"], name: "index_agreements_on_pair_id"
    t.index ["validated_by_id"], name: "index_agreements_on_validated_by_id"
  end

  create_table "cancellations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "agreement_id", null: false
    t.bigint "created_by_id", null: false
    t.index ["agreement_id"], name: "index_cancellations_on_agreement_id"
    t.index ["created_by_id"], name: "index_cancellations_on_created_by_id"
  end

  create_table "fulfillment_reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "personA", null: false
    t.boolean "personB", null: false
    t.bigint "created_by_id", null: false
    t.bigint "agreement_id", null: false
    t.index ["agreement_id"], name: "index_fulfillment_reports_on_agreement_id"
    t.index ["created_by_id"], name: "index_fulfillment_reports_on_created_by_id"
  end

  create_table "pairs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "confirmed"
    t.bigint "personA_id", null: false
    t.bigint "personB_id", null: false
    t.index ["personA_id"], name: "index_pairs_on_personA_id"
    t.index ["personB_id"], name: "index_pairs_on_personB_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accountability_periods", "users", column: "created_by_id"
  add_foreign_key "accountability_periods", "users", column: "validated_by_id"
  add_foreign_key "agreements", "users", column: "created_by_id"
  add_foreign_key "agreements", "users", column: "validated_by_id"
  add_foreign_key "cancellations", "users", column: "created_by_id"
  add_foreign_key "fulfillment_reports", "users", column: "created_by_id"
  add_foreign_key "pairs", "users", column: "personA_id"
  add_foreign_key "pairs", "users", column: "personB_id"
end
