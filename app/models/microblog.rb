class Microblog < ActiveRecord::Base
  attr_accessible :content, :header
  belongs_to :user

  validates :content, presence: true
  validates :header, presence: true
  validates :user_id, presence: true

  default_scope order: 'microblogs.created_at DESC'
  
end
