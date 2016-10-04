class AddJointIdToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :joint_id, :integer
  end
end
