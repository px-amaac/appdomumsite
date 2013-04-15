class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :microblogs, :dependent => :destroy
  has_many :apps, :dependent => :destroy
  has_attached_file :user_image, :styles =>{ :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :user_bio, :user_image, :github_link
  


  
end
