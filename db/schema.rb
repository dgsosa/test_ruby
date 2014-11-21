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

ActiveRecord::Schema.define(version: 20141121152723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autores", force: true do |t|
    t.string   "sales_org"
    t.string   "vendor"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "telephone"
    t.string   "tax_number"
    t.string   "tax_type"
    t.string   "status"
    t.string   "idsap"
    t.string   "ext_email"
    t.string   "ext_heredero"
    t.string   "ext_telefono"
    t.integer  "ext_envia_reporte_liq"
    t.integer  "ext_envia_reporte_stock"
    t.string   "ext_email_alternativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
