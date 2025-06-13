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

ActiveRecord::Schema[8.0].define(version: 2025_06_13_014847) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.string "logo_url"
    t.string "website"
    t.string "industry"
    t.integer "size"
    t.string "location", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applications", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.string "candidate_name", null: false
    t.string "candidate_email", null: false
    t.string "candidate_phone", null: false
    t.string "resume_url", null: false
    t.text "cover_letter"
    t.integer "status", null: false
    t.datetime "applied_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_applications_on_job_id"
  end

  create_table "job_benefits", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.string "benefit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_benefits_on_job_id"
  end

  create_table "job_requirements", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.string "requirement", null: false
    t.boolean "is_mandatory", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_requirements_on_job_id"
  end

  create_table "job_tags", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.string "tag", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_tags_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "title", null: false
    t.text "description", null: false
    t.text "full_description"
    t.integer "salary_min"
    t.integer "salary_max"
    t.string "salary_currency", null: false
    t.integer "employment_type", null: false
    t.integer "experience_level", null: false
    t.string "location", null: false
    t.boolean "is_remote"
    t.boolean "is_active", default: true
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  add_foreign_key "job_applications", "jobs"
  add_foreign_key "job_benefits", "jobs"
  add_foreign_key "job_requirements", "jobs"
  add_foreign_key "job_tags", "jobs"
  add_foreign_key "jobs", "companies"
end
