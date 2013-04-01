class Microblog < ActiveRecord::Base
  attr_accessible :content, :header, :user_id
end
