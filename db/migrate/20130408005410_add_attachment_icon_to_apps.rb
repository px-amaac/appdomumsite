class AddAttachmentIconToApps < ActiveRecord::Migration
  def self.up
    change_table :apps do |t|
      t.attachment :icon
    end
  end

  def self.down
    drop_attached_file :apps, :icon
  end
end
