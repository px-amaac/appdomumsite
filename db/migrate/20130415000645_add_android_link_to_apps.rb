class AddAndroidLinkToApps < ActiveRecord::Migration
  def change
  	add_column :apps, :android_link, :string
  end
end
