# frozen_string_literal: true

class Droptable < ActiveRecord::Migration[5.2]
  def change
    create_table :kramaadmins
    drop_table :kramaadmins
  end
end
