class AddStlToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :stl, :string
  end
end
