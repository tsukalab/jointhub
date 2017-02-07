class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.string :name,      null: false
      t.string :stl,       null: false
      t.timestamps null: false
    end
  end
end
