class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :avatar
 	
 	has_secure_password
 	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
 	validates_attachment :avatar, 
  :content_type => { :content_type => "image" },
  :size => { :in => 0..100.kilobytes }

 	Email_Regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 	validates :email, presence: true, format: {with: Email_Regex}, uniqueness: {case_sensitive: false}

 	validates :name, presence: true, length: {maximum: 60}

 	validates :password, presence: true, length: {minimum: 6}

 	validates :password, presence: true


end
