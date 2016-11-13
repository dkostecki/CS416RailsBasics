class CreateDaniels < ActiveRecord::Migration
  def change
    create_table :daniels do |t|
      t.string :login

      t.timestamps null: false
    end
  end
end
