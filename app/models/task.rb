class Task < ActiveRecord::Base
  attr_accessible :assigned_to, :description, :due_date, :user_id, :company_id

  [:assigned_to, :description, :due_date, :user_id, :company_id].each do |val|
  	validates val, presence: true
  end

  Email_Regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 validates :email, presence: true, format: {with: Email_Regex}



  
end
