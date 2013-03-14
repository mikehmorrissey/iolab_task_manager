class Addindex < ActiveRecord::Migration
  def up
  	add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  end

  def down
  	remove_index "users", ["email"], :name => "index_users_on_email", :unique => true
  	remove_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  end
end
