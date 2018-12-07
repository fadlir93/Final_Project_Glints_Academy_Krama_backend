# frozen_string_literal: true

class RenameFieldEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :title_event, :title
    rename_column :events, :desc_event, :desc
    rename_column :events, :img_event, :img
  end
end
