class AppScreenshot < ActiveRecord::Base
	belongs_to :app

	has_attached_file :image, :styles => { :thumb => "x150", :small => "x240", :large => "x480"}

				
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  attr_accessible :app_id ,:caption, :image
end