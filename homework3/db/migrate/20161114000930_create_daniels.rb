class CreateDaniels < ActiveRecord::Migration[5.0]
  def change
    create_table :daniels do |t|
      t.string :login

      t.timestamps
    end
  end
end