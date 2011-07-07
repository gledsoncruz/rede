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

ActiveRecord::Schema.define(:version => 20110707130150) do

  create_table "escolas", :force => true do |t|
    t.string   "responsavel", :limit => 45, :null => false
    t.string   "nome",        :limit => 60, :null => false
    t.string   "localizacao", :limit => 80
    t.date     "fundacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escolas_mergulhadores", :id => false, :force => true do |t|
    t.integer  "escola_id"
    t.integer  "mergulhador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mergulhadores", :force => true do |t|
    t.string   "nome",                :limit => 45, :null => false
    t.string   "sexo",                :limit => 1,  :null => false
    t.date     "data_nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name",    :limit => 60
    t.string   "avatar_content_type", :limit => 60
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "mergulhos", :force => true do |t|
    t.date     "data"
    t.time     "hora_inicio"
    t.time     "hora_fim"
    t.string   "nome_local",     :limit => 45, :null => false
    t.string   "local_mergulho", :limit => 45, :null => false
    t.float    "profundidade"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "temperatura",    :limit => 20
    t.boolean  "gmaps"
    t.integer  "mergulhador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "cadastro_type",          :limit => 20
    t.integer  "cadastro_id"
    t.integer  "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["cadastro_id"], :name => "index_usuarios_on_cadastro_id"
  add_index "usuarios", ["cadastro_type"], :name => "index_usuarios_on_cadastro_type"
  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
