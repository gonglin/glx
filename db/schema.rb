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

ActiveRecord::Schema.define(:version => 20120328072213) do

  create_table "items", :force => true do |t|
    t.string   "title"
    t.text     "des"
    t.string   "location"
    t.string   "Longitude"
    t.string   "Latitude"
    t.string   "statue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "Item_time"
    t.string   "img_url"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "Itemimg_file_name"
    t.string   "Itemimg_content_type"
    t.integer  "Itemimg_file_size"
    t.datetime "Itemimg_updated_at"
    t.integer  "plantag",              :default => 0
    t.integer  "milestonetag",         :default => 0
    t.string   "plandes"
    t.string   "planstatu"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",  :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",  :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pet_name"
    t.string   "des"
    t.string   "sex"
    t.string   "role",                                  :default => "0"
    t.string   "statue",                                :default => "0"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
