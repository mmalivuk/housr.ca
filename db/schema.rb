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

ActiveRecord::Schema.define(:version => 20120208003059) do

  create_table "buyers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "property_type"
    t.string   "min_price"
    t.string   "max_price"
    t.integer  "bedrooms"
    t.string   "bathrooms"
    t.string   "city"
    t.string   "timeframe"
    t.string   "more_info"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "postal_code"
    t.integer  "times_forwarded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leads", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "status"
    t.string   "phone"
    t.string   "email"
    t.string   "looking_to"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", :force => true do |t|
    t.string   "street_number"
    t.string   "street_name"
    t.string   "city"
    t.string   "building_type"
    t.string   "mls_number"
    t.string   "bedrooms"
    t.string   "bathrooms"
    t.string   "sq_ft"
    t.string   "asking_price"
    t.string   "price_sold"
    t.string   "garage_space"
    t.string   "storeys"
    t.text     "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img"
    t.float    "longitude"
    t.float    "latitude"
    t.boolean  "gmaps"
  end

  create_table "messages", :force => true do |t|
    t.string   "your_email"
    t.string   "your_name"
    t.string   "email"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renters", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "property_type"
    t.string   "min_price"
    t.string   "max_price"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "postal_code"
    t.string   "city"
    t.string   "timeframe"
    t.text     "more_info"
    t.integer  "times_forwarded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "property_type"
    t.string   "min_price"
    t.string   "max_price"
    t.integer  "bedrooms"
    t.string   "bathrooms"
    t.string   "city"
    t.string   "timeframe"
    t.string   "more_info"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "postal_code"
    t.integer  "times_forwarded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "phone"
    t.string   "city"
    t.text     "about"
    t.string   "avatar"
    t.text     "quote"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["last_name"], :name => "index_users_on_last_name"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
