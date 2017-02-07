class CreateJoints < ActiveRecord::Migration[5.0]
  def change
    create_table :joints do |t|
      t.string :name,        null: false
      t.text :description
      t.string :image,       null: false
      t.timestamps null: false
    end
  end
end
