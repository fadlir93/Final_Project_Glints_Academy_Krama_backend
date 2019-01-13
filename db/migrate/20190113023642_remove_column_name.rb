class RemoveColumnName < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :img
    remove_column :places, :image
  end
end
