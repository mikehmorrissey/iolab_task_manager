class Users < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
 	
 	Email_Regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 	validates :email, presence: true, format: {with: Email_Regex}

 	validates :name, presence: true, length: {maximum: 60}

 	validates :password, presence: true, length: {minimum: 6}

 	validates :password, presence: true


end
