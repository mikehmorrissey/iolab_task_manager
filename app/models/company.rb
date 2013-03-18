class Company < ActiveRecord::Base
  attr_accessible :contact_name, :email, :name, :phone
end
