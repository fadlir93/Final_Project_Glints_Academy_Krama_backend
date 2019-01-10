class AddImageToPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :image, :string
  end
end
