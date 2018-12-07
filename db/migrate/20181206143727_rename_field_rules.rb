# frozen_string_literal: true

class RenameFieldRules < ActiveRecord::Migration[5.2]
  def change
    rename_column :rules, :desc_rules, :desc
    rename_column :rules, :img_rules, :img
  end
end
