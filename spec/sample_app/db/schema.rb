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

ActiveRecord::Schema.define(version: 2018_07_20_193358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "activity_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.boolean "capital", default: false
    t.integer "state_id"
    t.string "lat"
    t.string "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "civil_states", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_consult_documentations", force: :cascade do |t|
    t.integer "document_participant_id"
    t.integer "notice_participant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_document_participants", force: :cascade do |t|
    t.integer "notice_participant_id"
    t.integer "document_notice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_document_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notice_documents", force: :cascade do |t|
    t.integer "document_type_id"
    t.integer "notice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notice_participants", force: :cascade do |t|
    t.integer "notice_id"
    t.integer "participant_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notice_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notices", force: :cascade do |t|
    t.string "name"
    t.integer "notice_type_id"
    t.string "document_number"
    t.date "proposal_date"
    t.time "proposal_hour"
    t.date "open_date"
    t.time "open_hour"
    t.date "session_date"
    t.time "session_hour"
    t.string "attachment"
    t.text "observation"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_participant_logs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "participant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_participants", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.string "cpf"
    t.string "email"
    t.string "telephone"
    t.string "cell_phone"
    t.string "password"
    t.string "token"
    t.datetime "token_validate"
    t.datetime "last_signed_at"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "education_backgrounds", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_cadastre_activities", force: :cascade do |t|
    t.integer "cadastre_id"
    t.text "description"
    t.integer "user_id"
    t.integer "activity_type_id"
    t.boolean "entity", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_cadastre_candidates", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_cadastre_documents", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "document_type_id"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_cadastre_mirrors", force: :cascade do |t|
    t.integer "cadastre_id"
    t.string "name"
    t.string "cnpj"
    t.string "fantasy_name"
    t.string "telephone"
    t.string "telephone_optional"
    t.string "cell_phone"
    t.string "email"
    t.integer "city_id"
    t.string "address"
    t.string "address_number"
    t.string "address_complement"
    t.string "cep"
    t.text "observation"
    t.boolean "status", default: true
    t.boolean "old", default: false
    t.string "lat"
    t.string "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_cadastre_situations", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "situation_type_id"
    t.text "observation"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_cadastres", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.string "fantasy_name"
    t.string "telephone"
    t.string "telephone_optional"
    t.string "cell_phone"
    t.string "email"
    t.integer "city_id"
    t.string "address"
    t.string "address_number"
    t.string "address_complement"
    t.string "cep"
    t.text "observation"
    t.boolean "status", default: true
    t.string "password"
    t.string "reset_token"
    t.boolean "old", default: false
    t.string "lat"
    t.string "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_document_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_member_jobs", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_member_mirrors", force: :cascade do |t|
    t.integer "member_id"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.integer "city_id"
    t.string "address"
    t.string "cep"
    t.string "email"
    t.date "born"
    t.string "telephone"
    t.string "telephone_optional"
    t.string "cell_phone"
    t.string "certificate_civil_criminal"
    t.string "photo"
    t.boolean "status", default: true
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_members", force: :cascade do |t|
    t.integer "cadastre_id"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.integer "city_id"
    t.string "address"
    t.string "cep"
    t.string "email"
    t.date "born"
    t.string "telephone"
    t.string "telephone_optional"
    t.string "cell_phone"
    t.string "certificate_civil_criminal"
    t.string "photo"
    t.boolean "status", default: true
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_provisonal_candidates", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_raffle_group_units", force: :cascade do |t|
    t.integer "group_id"
    t.integer "unit_id"
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_raffle_groups", force: :cascade do |t|
    t.integer "raffle_id"
    t.string "name"
    t.integer "city_id"
    t.integer "winner_id"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_raffle_manifestations", force: :cascade do |t|
    t.integer "raffle_id"
    t.integer "cadastre_id"
    t.text "group_ids", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_raffles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "document"
    t.date "manifestation_start_at"
    t.date "manifestation_end_at"
    t.date "raffle_start_at"
    t.date "raffle_end_at"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_situation_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_locations", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_situation_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_activities", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "user_id"
    t.text "content"
    t.boolean "attendant", default: false
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_attachments", force: :cascade do |t|
    t.integer "ticket_id"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_ratings", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "staff_id"
    t.integer "rating", default: 0
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_situations", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "situation_type_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_tickets", force: :cascade do |t|
    t.integer "ticket_type_id"
    t.integer "subject_id"
    t.integer "staff_id"
    t.integer "location_id"
    t.string "contact"
    t.date "date"
    t.time "hour"
    t.integer "attendant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_type_users", force: :cascade do |t|
    t.integer "ticket_type_id"
    t.integer "staff_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "kinships", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "person_contract_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "person_education_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "person_jobs", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.boolean "status", default: false
    t.float "salary"
    t.string "function_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "person_sectors", force: :cascade do |t|
    t.string "name"
    t.string "acron"
    t.string "prefex"
    t.integer "father_id"
    t.integer "responsible_id"
    t.boolean "status", default: true
    t.string "code"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "person_staff_mirrors", force: :cascade do |t|
    t.integer "staff_id"
    t.string "code"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.string "blood_type"
    t.date "born"
    t.integer "born_uf_id"
    t.integer "gender_id"
    t.string "avatar"
    t.string "personal_image"
    t.string "branch_line"
    t.string "curriculum"
    t.string "email"
    t.string "private_email"
    t.text "bio"
    t.time "start_hour"
    t.time "end_hour"
    t.boolean "weekend_access", default: false
    t.date "contract_date"
    t.date "shutdown_date"
    t.boolean "status", default: false
    t.boolean "administrator", default: false
    t.integer "job_id"
    t.boolean "terms_use", default: false
    t.boolean "introduce", default: false
    t.integer "civil_state_id"
    t.string "birth_place"
    t.integer "contract_type_id"
    t.string "address"
    t.string "address_complement"
    t.string "burgh"
    t.integer "state_id"
    t.integer "city_id"
    t.string "cep"
    t.string "telephone"
    t.string "celphone"
    t.string "ctps_number"
    t.string "ctps_serial"
    t.integer "ctps_uf_id"
    t.string "pis_pasep_number"
    t.date "pis_pasep_date"
    t.string "electoral_title_number"
    t.string "electoral_title_zone"
    t.string "electoral_title_section"
    t.integer "electoral_title_uf_id"
    t.string "bank_number"
    t.string "bank_agency_number"
    t.string "bank_account_number"
    t.string "spouse_name"
    t.integer "education_background_id"
    t.string "graduation"
    t.string "mobile_user_token"
    t.string "mobile_push_token"
    t.string "resolution"
    t.date "resolution_date"
    t.integer "sector_current_id"
    t.integer "sector_origin_id"
    t.boolean "blocked", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "person_staffs", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.string "blood_type"
    t.date "born"
    t.integer "born_uf_id"
    t.integer "gender_id"
    t.string "avatar_data"
    t.string "personal_image_data"
    t.string "branch_line"
    t.string "curriculum_data"
    t.string "email"
    t.string "private_email"
    t.text "bio"
    t.time "start_hour"
    t.time "end_hour"
    t.boolean "weekend_access", default: false
    t.date "contract_date"
    t.date "shutdown_date"
    t.boolean "status", default: false
    t.boolean "administrator", default: false
    t.string "password"
    t.integer "job_id"
    t.boolean "terms_use", default: false
    t.boolean "introduce", default: false
    t.integer "civil_state_id"
    t.string "birth_place"
    t.integer "contract_type_id"
    t.string "address"
    t.string "address_complement"
    t.string "burgh"
    t.integer "state_id"
    t.integer "city_id"
    t.string "cep"
    t.string "telephone"
    t.string "celphone"
    t.string "ctps_number"
    t.string "ctps_serial"
    t.integer "ctps_uf_id"
    t.string "pis_pasep_number"
    t.date "pis_pasep_date"
    t.string "electoral_title_number"
    t.string "electoral_title_zone"
    t.string "electoral_title_section"
    t.integer "electoral_title_uf_id"
    t.string "bank_number"
    t.string "bank_agency_number"
    t.string "bank_account_number"
    t.string "spouse_name"
    t.integer "education_background_id"
    t.string "graduation"
    t.string "mobile_user_token"
    t.string "mobile_push_token"
    t.string "resolution"
    t.date "resolution_date"
    t.integer "sector_current_id"
    t.integer "sector_origin_id"
    t.boolean "blocked", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_alerts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "alert_type_enum"
    t.text "sql_filter"
    t.boolean "sql_filter_status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_navs", force: :cascade do |t|
    t.string "label"
    t.text "description"
    t.integer "father_id"
    t.boolean "status", default: true
    t.integer "group_permission_id"
    t.text "permission_ids", array: true
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_notifications", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: false
    t.boolean "processed", default: false
    t.integer "owner_id"
    t.text "sql_filter"
    t.boolean "sql_filter_status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_permission_profiles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "permission_ids", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_permissions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_user_groups", force: :cascade do |t|
    t.text "observation"
    t.integer "profile_id"
    t.integer "user_id"
    t.integer "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_user_notifications", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "description"
    t.boolean "read", default: false
    t.datetime "read_datetime"
    t.boolean "priority", default: false
    t.integer "notification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_user_permissions", force: :cascade do |t|
    t.integer "permission_id"
    t.integer "user_id"
    t.integer "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.string "acron"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "special_condition_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

end
