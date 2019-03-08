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

ActiveRecord::Schema.define(version: 2019_03_01_175402) do

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

  create_table "address_activity_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_enterprise_companies", force: :cascade do |t|
    t.string "fantasy_name"
    t.string "name"
    t.text "description"
    t.string "cnpj"
    t.boolean "status", default: true
    t.string "telephone"
    t.string "email"
    t.string "address"
    t.integer "city_id"
    t.boolean "access_allow", default: true
    t.integer "user_id"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_enterprise_company_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "administrator", default: false
    t.string "password"
    t.string "password_expires_at"
    t.string "last_password"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_enterprise_typologies", force: :cascade do |t|
    t.integer "enterprise_id"
    t.integer "unit_quantity"
    t.string "name"
    t.text "description"
    t.string "home_type"
    t.string "private_area"
    t.boolean "status", default: true
    t.decimal "value_start", precision: 8, scale: 2
    t.decimal "value_end", precision: 8, scale: 2
    t.decimal "value_general", precision: 8, scale: 2
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_enterprises", force: :cascade do |t|
    t.string "name"
    t.decimal "value", precision: 8, scale: 2
    t.integer "company_id"
    t.integer "entity_id"
    t.boolean "entity", default: false
    t.boolean "status", default: true
    t.string "number_document"
    t.string "number_assessment"
    t.boolean "manifestation_allow", default: false
    t.string "web_url"
    t.string "lat"
    t.string "lng"
    t.integer "city_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_labels", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_ownership_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_regions", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_registry_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_unit_activities", force: :cascade do |t|
    t.integer "unit_id"
    t.text "description"
    t.integer "user_id"
    t.integer "actvity_type_id"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_unit_images", force: :cascade do |t|
    t.integer "unit_id"
    t.string "image"
    t.integer "user_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_unit_labels", force: :cascade do |t|
    t.integer "unit_id"
    t.integer "label_id"
    t.text "observation"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_unit_registries", force: :cascade do |t|
    t.integer "unit_id"
    t.integer "registry_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_unit_situation_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_unit_situations", force: :cascade do |t|
    t.integer "unit_id"
    t.integer "situation_type_id"
    t.integer "user_id"
    t.string "document"
    t.text "observation"
    t.integer "cadastre_id"
    t.integer "cadastre_mirror_id"
    t.boolean "computer"
    t.boolean "external"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_unit_use_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "address_units", force: :cascade do |t|
    t.string "acron_block"
    t.string "block"
    t.string "acron_group"
    t.string "group"
    t.string "acron_unit"
    t.string "unit"
    t.string "complete_address"
    t.string "cep"
    t.string "area"
    t.string "burgh"
    t.boolean "donate"
    t.date "iptu_date"
    t.string "iptu_number"
    t.integer "use_type_id"
    t.integer "city_id"
    t.integer "program_id"
    t.integer "sub_program_id"
    t.string "control_number"
    t.string "lat"
    t.string "lng"
    t.boolean "no_exemption", default: false
    t.string "area_front"
    t.string "area_back"
    t.string "area_right"
    t.string "area_left"
    t.string "limit_front"
    t.string "limit_back"
    t.string "limit_right"
    t.string "limit_left"
    t.string "sefaz_certificate"
    t.date "sefaz_certificate_date"
    t.date "sefaz_certificate_validate_date"
    t.integer "enterprise_typology_id"
    t.string "unit_code"
    t.string "notary_office"
    t.date "contract_date"
    t.date "code_date"
    t.date "contract_office"
    t.date "petition_date"
    t.date "signature_date"
    t.date "anoreg_date"
    t.date "devolution_date"
    t.string "requirement"
    t.date "requirement_date"
    t.string "declaratory_act_number"
    t.date "declaratory_act_date"
    t.string "rejection_number"
    t.date "rejection_date"
    t.string "endorsement"
    t.integer "ownership_type_id"
    t.string "urbanistic_project"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_agenda_categories", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_agenda_reference_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_agenda_references", force: :cascade do |t|
    t.integer "category_id"
    t.string "cpf"
    t.string "cnpj"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_agenda_responsibles", force: :cascade do |t|
    t.integer "staff_id"
    t.integer "agenda_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_agenda_schedules", force: :cascade do |t|
    t.integer "agenda_id"
    t.date "date"
    t.time "hour"
    t.string "name"
    t.string "cnpj"
    t.string "cpf"
    t.integer "city_id"
    t.string "address"
    t.string "document_number"
    t.string "email"
    t.string "telephone"
    t.string "celphone"
    t.date "born"
    t.integer "situation_id"
    t.integer "attendant_id"
    t.text "attendant_observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_agenda_situations", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_agendas", force: :cascade do |t|
    t.string "title"
    t.text "resume"
    t.text "content"
    t.date "started_at"
    t.date "ended_at"
    t.time "hour_start"
    t.time "hour_end"
    t.integer "attendance_time", default: 0
    t.integer "attendance_quantity", default: 0
    t.boolean "lunch", default: false
    t.time "lunch_hour_start"
    t.time "lunch_hour_end"
    t.integer "lunch_attendance_quantity", default: 0
    t.integer "location_id"
    t.integer "creator_id"
    t.boolean "status", default: false
    t.boolean "cnpj_required", default: false
    t.boolean "restriction", default: false
    t.boolean "restriction_presence", default: false
    t.text "restriction_sql"
    t.boolean "saturday", default: false
    t.time "saturday_hour_start"
    t.time "saturday_hour_end"
    t.integer "saturday_attendance_quantity", default: 0
    t.boolean "sunday", default: false
    t.time "sunday_hour_start"
    t.time "sunday_hour_end"
    t.integer "sunday_attendance_quantity", default: 0
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_attendant_stations", force: :cascade do |t|
    t.integer "attendant_id"
    t.integer "station_id"
    t.integer "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_attendant_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_attendants", force: :cascade do |t|
    t.integer "staff_id"
    t.integer "creator_id"
    t.integer "attendant_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_categories", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_chat_messages", force: :cascade do |t|
    t.integer "chat_id"
    t.text "content"
    t.boolean "attendant", default: false
    t.integer "attendant_id"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_chats", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "attendant_id"
    t.boolean "close", default: false
    t.integer "closer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_dailies", force: :cascade do |t|
    t.integer "station_id"
    t.integer "attendant_id"
    t.string "name"
    t.string "cpf"
    t.string "document_number"
    t.boolean "scheduled"
    t.integer "category_id"
    t.integer "daily_type_id"
    t.boolean "preferential", default: false
    t.integer "preferential_type_id"
    t.boolean "special_condition", default: false
    t.integer "special_condition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_daily_preferential_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_daily_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_document_types", force: :cascade do |t|
    t.integer "code", default: 0
    t.string "name"
    t.text "observation"
    t.string "label"
    t.text "description"
    t.text "help_text"
    t.boolean "status", default: true
    t.integer "sei_tranning_id"
    t.integer "sei_production_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_eventual_cadastres", force: :cascade do |t|
    t.integer "cadastre_id"
    t.string "name"
    t.string "cpf"
    t.integer "gender_id"
    t.date "born"
    t.integer "born_uf_id"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.string "place_birth"
    t.date "arrival_df"
    t.integer "civil_state_id"
    t.integer "program_id"
    t.integer "sub_program_id"
    t.string "password"
    t.integer "situation_id"
    t.text "observation"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_requeriment_categories", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_requeriment_files", force: :cascade do |t|
    t.integer "requeriment_id"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_requeriment_situations", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_requeriments", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "entity_id"
    t.string "name"
    t.string "cpf"
    t.string "cnpj"
    t.string "telephone"
    t.string "celphone"
    t.string "address"
    t.integer "city_id"
    t.string "document_number"
    t.text "content"
    t.integer "category_id"
    t.integer "situation_id"
    t.integer "attendant_id"
    t.text "attendant_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_station_situations", force: :cascade do |t|
    t.integer "station_id"
    t.integer "attendant_id"
    t.integer "situation", default: 0
    t.boolean "administrator", default: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_stations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "lat"
    t.string "lng"
    t.integer "responsible_id"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_step_documents", force: :cascade do |t|
    t.integer "document_type_id"
    t.integer "category_step_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_steps", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_ticket_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: false
    t.boolean "unique", default: false
    t.boolean "filter_situation", default: false
    t.text "filter_situation_id"
    t.boolean "filter_convocation", default: false
    t.text "filter_convocation_id"
    t.boolean "filter_program", default: false
    t.text "filter_program_id"
    t.boolean "filter_sql", default: false
    t.text "filter_sql_content"
    t.boolean "due", default: false
    t.date "started_at"
    t.date "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_ticket_category_steps", force: :cascade do |t|
    t.integer "ticket_category_id"
    t.integer "step_id"
    t.string "name"
    t.string "resume"
    t.boolean "document_required", default: false
    t.boolean "required", default: false
    t.integer "screen_order", default: 0
    t.boolean "allow_confirmation", default: false
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_ticket_situation_types", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.boolean "status", default: true
    t.boolean "allowed_view_candidate", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_ticket_situations", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "situation_type_id"
    t.integer "attendant_id"
    t.text "attendant_observation"
    t.integer "station_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "attendance_ticket_steps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendance_tickets", force: :cascade do |t|
    t.integer "category_id"
    t.integer "cadastre_id"
    t.integer "cadastre_mirror_id"
    t.string "document_sei_number"
    t.string "document_sei_id"
    t.integer "schedule_id"
    t.date "started_at"
    t.date "ended_at"
    t.integer "viewr_id"
    t.boolean "internal", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "audits", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id"], name: "auditable_index"
    t.index ["created_at"], name: "index_extranet.audits_on_created_at"
    t.index ["request_uuid"], name: "index_extranet.audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

  create_table "brb_categories", force: :cascade do |t|
    t.string "name"
    t.decimal "default_value", precision: 8, scale: 2
    t.boolean "status", default: true
    t.integer "invoice_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "brb_invoice_situations", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "brb_invoice_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.string "account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "brb_invoices", force: :cascade do |t|
    t.integer "category_id"
    t.string "barcode"
    t.string "bank_agency"
    t.string "bank_account"
    t.string "cpf"
    t.string "cnpj"
    t.string "name"
    t.string "address"
    t.integer "state_id"
    t.string "city"
    t.string "cep"
    t.integer "situation_id"
    t.integer "invoice_type_id"
    t.date "due"
    t.decimal "value", precision: 8, scale: 2
    t.text "message"
    t.date "payment"
    t.date "credit"
    t.text "bank_return"
    t.string "number_our"
    t.string "number_document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "brb_remittances", force: :cascade do |t|
    t.text "content"
    t.text "header_content"
    t.integer "invoice_id"
    t.boolean "publish", default: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_activity_documents", force: :cascade do |t|
    t.integer "activity_id"
    t.string "document"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_activity_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_activities", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "cadastre_mirror_id"
    t.integer "activity_type_id"
    t.integer "user_id"
    t.datetime "date"
    t.boolean "computer", default: false
    t.string "title"
    t.text "justify"
    t.string "document"
    t.boolean "critical", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_convocations", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "convocation_id"
    t.boolean "status", default: true
    t.integer "user_id"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_indications", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "allotment_cadastre_id"
    t.integer "enterprise_id"
    t.boolean "status", default: true
    t.datetime "inactived_at"
    t.boolean "inactive_count", default: false
    t.boolean "pre_indication", default: false
    t.datetime "actived_at"
    t.integer "user_id"
    t.boolean "computer", default: false
    t.boolean "company", default: false
    t.boolean "staff", default: true
    t.integer "ticket_id"
    t.boolean "cadastre_answer"
    t.datetime "cadastre_answered_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_inheritors", force: :cascade do |t|
    t.integer "cadastre_id"
    t.string "place_birth"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.date "born"
    t.integer "civil_state_id"
    t.integer "gender_id"
    t.string "single_name"
    t.decimal "percentage", precision: 8, scale: 2
    t.text "observation"
    t.boolean "estate", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_mirrors", force: :cascade do |t|
    t.integer "cadastre_id"
    t.string "name"
    t.string "cpf"
    t.integer "gender_id"
    t.date "born"
    t.integer "born_uf_id"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.string "place_birth"
    t.date "arrival_df"
    t.string "telephone"
    t.string "telephone_optional"
    t.string "celphone"
    t.string "email"
    t.boolean "special_condition", default: false
    t.integer "special_condition_type_id"
    t.boolean "adapted_property", default: false
    t.string "cep"
    t.integer "city_id"
    t.integer "state_id"
    t.string "address"
    t.string "address_complement"
    t.decimal "family_income", precision: 8, scale: 2
    t.decimal "personal_income", precision: 8, scale: 2
    t.string "work_cep"
    t.integer "work_city_id"
    t.integer "work_state_id"
    t.integer "work_address"
    t.string "work_employment"
    t.string "nis"
    t.string "cid"
    t.string "mother_name"
    t.integer "civil_state_id"
    t.integer "program_id"
    t.integer "sub_program_id"
    t.text "introduce"
    t.string "nationality"
    t.string "wedding_regime"
    t.date "wedding_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_occurrences", force: :cascade do |t|
    t.integer "cadastre_id"
    t.string "name"
    t.text "description"
    t.string "friendly_name"
    t.string "friendly_description"
    t.boolean "impediment", default: false
    t.boolean "alert", default: false
    t.boolean "portal", default: false
    t.integer "user_id"
    t.boolean "computer", default: false
    t.boolean "external", default: false
    t.integer "ticket_id"
    t.string "target_id"
    t.string "target_code"
    t.boolean "solved", default: false
    t.datetime "solved_at"
    t.integer "solved_user_id"
    t.text "solved_feedback"
    t.string "solved_document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_pontuations", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "cadastre_mirror_id"
    t.integer "code"
    t.decimal "bsb"
    t.decimal "dependent"
    t.decimal "timelist"
    t.decimal "special_condition"
    t.decimal "income"
    t.decimal "total"
    t.integer "program_id"
    t.integer "situation_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_positions", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "cadastre_pontuation_id"
    t.integer "position"
    t.integer "program_id"
    t.integer "sub_program_id"
    t.integer "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_procedurals", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "procedural_type_id"
    t.integer "subscribe_id"
    t.integer "user_id"
    t.text "observation"
    t.boolean "computer", default: false
    t.integer "cadastre_convocation_id"
    t.integer "unit_cadastre_id"
    t.string "process_number"
    t.string "process_sei"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastre_situations", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "cadastre_mirror_id"
    t.integer "situation_type_id"
    t.integer "subscribe_id"
    t.integer "user_id"
    t.text "observation"
    t.boolean "computer", default: false
    t.integer "cadastre_convocation_id"
    t.string "process_number"
    t.string "process_sei"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_cadastres", force: :cascade do |t|
    t.uuid "uuid", default: -> { "uuid_generate_v4()" }, null: false
    t.string "name"
    t.string "cpf"
    t.integer "gender_id"
    t.date "born"
    t.integer "born_uf_id"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.string "place_birth"
    t.date "arrival_df"
    t.string "telephone"
    t.string "telephone_optional"
    t.string "celphone"
    t.string "email"
    t.boolean "special_condition", default: false
    t.integer "special_condition_type_id"
    t.boolean "adapted_property", default: false
    t.string "cep"
    t.integer "city_id"
    t.integer "state_id"
    t.string "address"
    t.string "address_complement"
    t.decimal "family_income", precision: 8, scale: 2
    t.decimal "personal_income", precision: 8, scale: 2
    t.string "work_cep"
    t.integer "work_city_id"
    t.integer "work_state_id"
    t.integer "work_address"
    t.string "work_employment"
    t.string "nis"
    t.string "cid"
    t.string "mother_name"
    t.integer "civil_state_id"
    t.integer "program_id"
    t.integer "sub_program_id"
    t.string "password"
    t.string "password_token"
    t.datetime "password_token_expires_at"
    t.string "session_token"
    t.text "introduce"
    t.string "nationality"
    t.string "wedding_regime"
    t.date "wedding_date"
    t.date "admission_date"
    t.string "avatar"
    t.string "app_push_token"
    t.string "app_user_token"
    t.boolean "scoring", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_sihab.candidate_cadastres_on_city_id"
    t.index ["program_id"], name: "index_sihab.candidate_cadastres_on_program_id"
    t.index ["uuid"], name: "index_sihab.candidate_cadastres_on_uuid", unique: true
  end

  create_table "candidate_cadins", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.date "born"
    t.string "document_number"
    t.string "place_birth"
    t.integer "city_id"
    t.string "address"
    t.string "cep"
    t.date "distribution_date"
    t.decimal "percentege", precision: 8, scale: 2
    t.text "observation"
    t.boolean "estate", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_convocations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.integer "quantity"
    t.text "justify"
    t.boolean "status", default: true
    t.integer "program_id"
    t.integer "sub_program_id"
    t.integer "user_id"
    t.string "document"
    t.date "document_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_dependent_mirrors", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "cadastre_mirror_id"
    t.integer "dependent_id"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.date "born"
    t.integer "gender_id"
    t.string "place_birth"
    t.integer "civil_state_id"
    t.decimal "income", precision: 8, scale: 2
    t.integer "kinship_id"
    t.boolean "special_condition", default: false
    t.integer "special_condition_type_id"
    t.string "cid"
    t.string "nis"
    t.string "employment"
    t.string "nationality"
    t.date "admission_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_dependents", force: :cascade do |t|
    t.integer "cadastre_id"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.integer "rg_uf_id"
    t.date "born"
    t.integer "gender_id"
    t.string "place_birth"
    t.integer "civil_state_id"
    t.decimal "income", precision: 8, scale: 2
    t.integer "kinship_id"
    t.boolean "special_condition", default: false
    t.integer "special_condition_type_id"
    t.string "cid"
    t.string "nis"
    t.string "employment"
    t.string "nationality"
    t.date "admission_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_indication_activities", force: :cascade do |t|
    t.integer "cadastre_indication_id"
    t.integer "activity_type_id"
    t.integer "user_id"
    t.boolean "computer", default: false
    t.boolean "company", default: false
    t.boolean "staff", default: true
    t.integer "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_indication_activity_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: false
    t.boolean "waiver", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_indication_allotment_cadastres", force: :cascade do |t|
    t.integer "allotment_id"
    t.integer "cadastre_id"
    t.integer "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_indication_allotments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "enterprise_id"
    t.integer "ticket_id"
    t.integer "user_id"
    t.decimal "income_start", precision: 8, scale: 2
    t.decimal "income_end", precision: 8, scale: 2
    t.integer "program_id"
    t.boolean "evaluation_entity", default: false
    t.integer "evaluation_entity_id"
    t.boolean "filter_city", default: false
    t.integer "filter_city_id"
    t.boolean "ignore_active_indicated", default: false
    t.boolean "ignore_occurence", default: false
    t.integer "demand", default: 0
    t.integer "rii", default: 0
    t.integer "rie", default: 0
    t.integer "old", default: 0
    t.integer "special", default: 0
    t.integer "vulnerable", default: 0
    t.boolean "status", default: true
    t.boolean "process", default: false
    t.datetime "process_at"
    t.integer "process_user_id"
    t.boolean "only_extract", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_indication_evaluations", force: :cascade do |t|
    t.integer "cadastre_id"
    t.integer "allotment_cadastre_id"
    t.integer "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_iptus", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "registration"
    t.string "city"
    t.string "address"
    t.string "kind_realty"
    t.string "kind_search"
    t.string "year"
    t.string "realty_codhab"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_lists", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "sql"
    t.text "view_columns"
    t.boolean "detail", default: false
    t.string "detail_column"
    t.string "detail_field_param"
    t.string "detail_url"
    t.boolean "detail_target_blank", default: true
    t.boolean "filter", default: false
    t.text "filter_fields"
    t.text "filter_field_labels"
    t.boolean "row_count", default: true
    t.boolean "status", default: false
    t.integer "program_id"
    t.integer "sub_program_id"
    t.boolean "external", default: false
    t.boolean "extract_xls", default: false
    t.boolean "extract_csv", default: false
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_occurrence_targets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "observation"
    t.boolean "status", default: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidate_procedural_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_programs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "sub_program", default: false
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "candidate_situation_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
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

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cms_archives", force: :cascade do |t|
    t.string "name"
    t.string "archive"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cms_nav_categories", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.integer "nav_category_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cms_nav_category_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cms_navs", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "nav_category_id"
    t.integer "order"
    t.integer "user_id"
    t.boolean "publish", default: false
    t.boolean "target_blank", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cms_post_categories", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.integer "post_category_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cms_post_category_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cms_posts", force: :cascade do |t|
    t.date "publish_date"
    t.text "content"
    t.text "description"
    t.string "title"
    t.string "post_author"
    t.string "image"
    t.string "image_slide"
    t.string "author_image"
    t.string "caption_color"
    t.string "slug"
    t.string "layout"
    t.string "flickr"
    t.boolean "slide", default: false
    t.boolean "image_header", default: false
    t.boolean "publish", default: false
    t.boolean "draft", default: false
    t.boolean "iframe", default: false
    t.integer "user_id"
    t.integer "post_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "communication_template_users", force: :cascade do |t|
    t.integer "staff_id"
    t.integer "template_id"
    t.boolean "administrador", default: false
    t.integer "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "communication_templates", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "sector_id"
    t.integer "creator_id"
    t.string "origin_email"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "communication_ticket_targets", force: :cascade do |t|
    t.integer "ticket_id"
    t.string "cpf"
    t.string "target_model"
    t.integer "target_model_id"
    t.string "email"
    t.string "push"
    t.string "sms"
    t.boolean "email_read", default: false
    t.datetime "email_read_at"
    t.boolean "push_read", default: false
    t.datetime "push_read_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "communication_tickets", force: :cascade do |t|
    t.integer "template_id"
    t.integer "template_user_id"
    t.text "content"
    t.boolean "xls", default: false
    t.string "xls_url"
    t.boolean "email", default: false
    t.boolean "sms", default: false
    t.boolean "push", default: false
    t.boolean "candidate_notification", default: false
    t.boolean "processed", default: false
    t.datetime "processed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_attachment_types", force: :cascade do |t|
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
    t.integer "notice_document_id"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_document_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notice_attachments", force: :cascade do |t|
    t.string "name"
    t.string "attachment"
    t.text "observation"
    t.integer "notice_id"
    t.integer "attachment_type_id"
    t.boolean "status", default: true
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notice_documents", force: :cascade do |t|
    t.integer "document_type_id"
    t.integer "notice_id"
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notice_participants", force: :cascade do |t|
    t.integer "notice_id"
    t.integer "participant_id"
    t.boolean "status", default: true
    t.boolean "certificate", default: false
    t.datetime "doc_sent_at"
    t.datetime "proposal_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "cpl_notice_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.integer "staff_id"
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
    t.integer "staff_id"
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

  create_table "entity_cadastre_member_mirrors", force: :cascade do |t|
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

  create_table "entity_cadastre_members", force: :cascade do |t|
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
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "entity_cadastres", force: :cascade do |t|
    t.uuid "uuid", default: -> { "uuid_generate_v4()" }, null: false
    t.string "name"
    t.string "cnpj"
    t.string "acron"
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
    t.string "lat"
    t.string "lng"
    t.integer "situation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_sihab.entity_cadastres_on_city_id"
    t.index ["cnpj"], name: "index_sihab.entity_cadastres_on_cnpj"
    t.index ["uuid"], name: "index_sihab.entity_cadastres_on_uuid", unique: true
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

  create_table "helpdesk_ticket_situation_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_situations", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "situation_type_id"
    t.integer "attendant_id"
    t.integer "requester_id"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_type_subjects", force: :cascade do |t|
    t.integer "ticket_type_id"
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "helpdesk_ticket_type_users", force: :cascade do |t|
    t.integer "ticket_type_id"
    t.integer "staff_id"
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
    t.boolean "schedule", default: false
    t.date "schedule_date"
    t.time "schedule_hour"
    t.date "due"
    t.text "description"
    t.integer "attendant_id"
    t.integer "situation_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_advice_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_complainants", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "legal_advice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_complements", force: :cascade do |t|
    t.integer "document_type_id"
    t.integer "lawsuit_id"
    t.integer "instancy_place_id"
    t.date "distribution_date"
    t.date "end_date"
    t.text "complement"
    t.integer "responsible_lawyer_id"
    t.integer "advice_type_id"
    t.string "attachment"
    t.boolean "status", default: true
    t.integer "complement_father_id"
    t.integer "legal_advice_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_defendants", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "legal_advice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_instancies", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_instancy_places", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.integer "instancy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_lawsuits", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "juridical_legal_advices", force: :cascade do |t|
    t.string "process_number"
    t.string "agency"
    t.integer "lawsuit_id"
    t.decimal "lawsuit_value", precision: 8, scale: 2
    t.integer "instancy_place_id"
    t.integer "document_type_id"
    t.integer "responsible_lawyer_id"
    t.integer "process_type"
    t.decimal "condemnation_value", precision: 8, scale: 2
    t.string "assessment_number"
    t.integer "user_id"
    t.integer "advice_type_id"
    t.boolean "free_justice", default: false
    t.boolean "veredict"
    t.integer "probability"
    t.decimal "procedural_costs", precision: 8, scale: 2
    t.decimal "judicial_deposit", precision: 8, scale: 2
    t.boolean "status", default: true
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

  create_table "pivotal_bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.string "target_model"
    t.integer "target_model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_engine_permissions", force: :cascade do |t|
    t.integer "engine_id"
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.string "code"
    t.string "controller"
    t.string "action"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_engines", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "code"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_jobs", force: :cascade do |t|
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

  create_table "pivotal_nav_permissions", force: :cascade do |t|
    t.integer "nav_id"
    t.integer "user_id"
    t.integer "creator_id"
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
    t.string "url"
    t.integer "position", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_sectors", force: :cascade do |t|
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

  create_table "pivotal_sessions", force: :cascade do |t|
    t.string "target_id"
    t.string "target_model"
    t.string "target_action"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_user_permissions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "permission_id"
    t.integer "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_user_view_logs", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.integer "user_id"
    t.string "http_method"
    t.string "controller_class_name"
    t.text "fullpath"
    t.text "original_fullpath"
    t.text "parameters"
    t.text "user_agent"
    t.string "remote_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "pivotal_users", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "cpf"
    t.date "born"
    t.integer "born_uf_id"
    t.integer "gender_id"
    t.string "avatar"
    t.string "branch_line"
    t.string "curriculum"
    t.string "email"
    t.string "private_email"
    t.boolean "status", default: false
    t.boolean "administrator", default: false
    t.string "password"
    t.integer "job_id"
    t.integer "civil_state_id"
    t.string "birth_place"
    t.string "telephone"
    t.string "celphone"
    t.string "mobile_user_token"
    t.string "mobile_push_token"
    t.integer "sector_id"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.boolean "external", default: false
    t.text "external_observation"
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

  create_table "protocol_allotments", force: :cascade do |t|
    t.text "description"
    t.integer "priority"
    t.date "replay_date"
    t.integer "amount_docs"
    t.boolean "status", default: false
    t.integer "sector_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "protocol_assessments", force: :cascade do |t|
    t.integer "number"
    t.integer "year"
    t.integer "prefex"
    t.string "document_number"
    t.string "external_number"
    t.string "requesting_unit"
    t.string "external_agency"
    t.string "recipient"
    t.string "address"
    t.string "cpf"
    t.string "cnpj"
    t.string "sign_by"
    t.string "city"
    t.text "observation"
    t.text "description_subject"
    t.integer "id_old"
    t.integer "document_type_id"
    t.integer "subject_id"
    t.integer "user_id"
    t.integer "sector_id"
    t.boolean "external_petition"
    t.integer "responded_staff_id"
    t.string "email"
    t.string "telephone"
    t.string "celphone"
    t.boolean "finalized"
    t.boolean "responded"
    t.datetime "finalized_date"
    t.datetime "responded_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "protocol_attach_documents", force: :cascade do |t|
    t.integer "document_father_id"
    t.integer "document_child_id"
    t.integer "attach_type"
    t.integer "sector_id"
    t.integer "user_id"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "protocol_conducts", force: :cascade do |t|
    t.text "description"
    t.integer "conduct_type"
    t.integer "assessment_id"
    t.integer "user_id"
    t.integer "sector_id"
    t.integer "allotment_id"
    t.date "replay_date"
    t.date "responded_date"
    t.boolean "responded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "protocol_digital_documents", force: :cascade do |t|
    t.integer "page_number"
    t.string "doc_path"
    t.integer "assessment_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "protocol_document_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.integer "prefex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "protocol_locations", force: :cascade do |t|
    t.string "shelf"
    t.string "pile"
    t.string "box"
    t.text "observation"
    t.string "desk"
    t.string "network_path"
    t.integer "assessment_id"
    t.integer "sector_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "protocol_subjects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "sefaz_allotments", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "request_date"
    t.string "protocol_return"
    t.integer "exemption_type_id"
    t.integer "notifier_id"
    t.text "observation"
    t.integer "request_situation_id"
    t.integer "request_type_id"
    t.date "send_date"
    t.integer "send_staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "sefaz_exemption_types", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "sefaz_exemptions", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "city"
    t.string "address"
    t.string "realty_number"
    t.string "realty_value"
    t.integer "allotment_id"
    t.string "act_number"
    t.boolean "canceled"
    t.datetime "canceled_date"
    t.integer "canceled_user_id"
    t.text "return_message"
    t.integer "user_id"
    t.string "system_message"
    t.string "number_act_cancel"
    t.string "year_act_cancel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "sefaz_notifiers", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "sefaz_request_situations", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "sefaz_request_types", force: :cascade do |t|
    t.string "name"
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

  create_table "support_attendance_ticket_documents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wiki_page_users", force: :cascade do |t|
    t.integer "topic_id"
    t.integer "staff_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "wiki_pages", force: :cascade do |t|
    t.integer "topic_id"
    t.string "title"
    t.integer "user_id"
    t.text "content"
    t.boolean "iframe", default: false
    t.string "iframe_url"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "wiki_tooltip_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "wiki_tooltips", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.string "content"
    t.boolean "status"
    t.integer "user_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "wiki_topics", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status"
    t.boolean "public", default: false
    t.integer "user_id"
    t.boolean "deleted", default: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
