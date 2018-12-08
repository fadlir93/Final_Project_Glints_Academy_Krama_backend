# frozen_string_literal: true

class RenameFieldPlaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :places, :title_place, :title
    rename_column :places, :desc_place, :desc
    rename_column :places, :img_place, :img
  end
end
