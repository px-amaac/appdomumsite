class AddIphoneLinkToApps < ActiveRecord::Migration
  def change
  	add_column :apps, :iphone_link, :string
  end
end
