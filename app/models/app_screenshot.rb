class AppScreenshot < ActiveRecord::Base
	belongs_to :app

	has_attached_file :image, :styles => { :small => "480x320>", :large => "920x640>"}
	validates_attachment_presence :image

  attr_accessible :caption
end