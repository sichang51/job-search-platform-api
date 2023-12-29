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

ActiveRecord::Schema[7.0].define(version: 2023_12_28_170436) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carted_jobs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "co_name"
    t.string "co_logo"
    t.string "co_location"
    t.string "co_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "company_id"
    t.string "job_title"
    t.text "job_description"
    t.string "job_url"
    t.string "job_type"
    t.string "job_yrs_exp"
    t.string "job_location"
    t.string "job_salary_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_phn_num"
    t.text "user_bio"
    t.string "user_linkedin_url"
    t.string "user_twitter_handle"
    t.string "user_website_url"
    t.string "user_resume_url"
    t.string "user_github_url"
    t.string "user_photo_url"
    t.string "user_fname"
    t.string "user_lname"
  end

end
