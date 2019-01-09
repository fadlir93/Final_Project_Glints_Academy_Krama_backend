class RemoveFieldNameFromPlace < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :img, :string
  end
end
