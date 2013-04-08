class AddAttachmentImageToAppScreenshots < ActiveRecord::Migration
  def self.up
    change_table :app_screenshots do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :app_screenshots, :image
  end
end
