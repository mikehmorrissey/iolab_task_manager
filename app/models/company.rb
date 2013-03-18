class Company < ActiveRecord::Base
  attr_accessible :contact_name, :email, :name, :phone
  has_many :tasks

  validates :name, presence: true

  Email_Regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 	validates :email, format: {with: Email_Regex}
end
