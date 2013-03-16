class Note < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  before_save :save_line_break
  validates :content, presence: true
   default_scope order: 'notes.created_at DESC'

  def save_line_break
  	self.content.gsub!(/\n/, '<br/>')
  	
  end
end
