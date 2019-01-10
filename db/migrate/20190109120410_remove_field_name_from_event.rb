class RemoveFieldNameFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :img, :string
  end
end
