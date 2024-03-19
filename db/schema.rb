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

ActiveRecord::Schema[7.0].define(version: 2024_03_19_170656) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "corrective_action_team_members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "corrective_action_id", null: false
    t.bigint "team_member_id", null: false
    t.index ["corrective_action_id"], name: "index_corrective_action_team_members_on_corrective_action_id"
    t.index ["team_member_id"], name: "index_corrective_action_team_members_on_team_member_id"
  end

  create_table "corrective_actions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "status"
    t.string "severity"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.datetime "date_opened"
    t.date "opened_date"
    t.index ["user_id"], name: "index_corrective_actions_on_user_id"
  end

  create_table "d_step_attachments", force: :cascade do |t|
    t.string "file_name"
    t.string "title"
    t.text "description"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "d_step_id", null: false
    t.index ["d_step_id"], name: "index_d_step_attachments_on_d_step_id"
  end

  create_table "d_steps", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.text "description"
    t.boolean "is_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "corrective_action_id", null: false
    t.index ["corrective_action_id"], name: "index_d_steps_on_corrective_action_id"
  end

  create_table "team_members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "corrective_action_team_members", "corrective_actions"
  add_foreign_key "corrective_action_team_members", "team_members"
  add_foreign_key "corrective_actions", "users"
  add_foreign_key "d_step_attachments", "d_steps"
  add_foreign_key "d_steps", "corrective_actions"
end
