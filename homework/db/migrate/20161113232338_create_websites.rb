class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.text :url
      t.integer :daniel_id

      t.timestamps null: false
    end
  end
end
