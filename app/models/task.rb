class Task < ActiveRecord::Base
  attr_accessible :assigned_to, :company_name, :contact_name, :description, :due_date, :email, :phone, :user_id

  [:assigned_to, :company_name, :contact_name, :description, :due_date, :email, :phone].each do |val|
  	validates val, presence: true
  end

  Email_Regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 validates :email, presence: true, format: {with: Email_Regex}

  
end
