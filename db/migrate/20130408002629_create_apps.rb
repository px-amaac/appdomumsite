class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps
    end
    add_index :apps, [:user_id, :created_at]
  end
end
