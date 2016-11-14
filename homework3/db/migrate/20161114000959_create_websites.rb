class CreateWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|
      t.text :url
      t.integer :daniel_id

      t.timestamps
    end
  end
end
