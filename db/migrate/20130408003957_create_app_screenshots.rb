class CreateAppScreenshots < ActiveRecord::Migration
  def change
    create_table :app_screenshots do |t|
      t.string :caption
      t.integer :app_id

      t.timestamps
    end
  end
end
