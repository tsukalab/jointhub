class CreateJointParts < ActiveRecord::Migration[5.0]
  def change
    create_table :joint_parts do |t|
      t.references :joint, index: true, foreign_key: true, null: false
      t.references :part, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
