class App < ActiveRecord::Base
	attr_accessible :description, :name, :icon, :app_screenshots_attributes, :android_link, :iphone_link
	has_many :app_screenshots, :dependent => :destroy
	belongs_to :user
	accepts_nested_attributes_for :app_screenshots, :reject_if => lambda{ |attributes| attributes[:image].blank? }, :allow_destroy => true

	validates :name, presence: true
	validates :description, presence: true

	  has_attached_file :icon, :styles =>{ :medium => "300x300<", :thumb => "150x150<" }, :default_url => "/images/:style/missing.png"
	  default_scope order: 'apps.created_at DESC'
end
 