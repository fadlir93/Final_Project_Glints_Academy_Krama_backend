# frozen_string_literal: true

class CreateRulesplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :rulesplaces do |t|
      t.references :place, foreign_key: true
      t.references :rule, foreign_key: true

      t.timestamps
    end
  end
end
