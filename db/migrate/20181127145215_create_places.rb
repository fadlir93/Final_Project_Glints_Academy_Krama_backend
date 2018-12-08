# frozen_string_literal: true

class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :title_place
      t.string :desc_place
      t.string :img_place

      t.timestamps
    end
  end
end
