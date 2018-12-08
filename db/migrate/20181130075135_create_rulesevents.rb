# frozen_string_literal: true

class CreateRulesevents < ActiveRecord::Migration[5.2]
  def change
    create_table :rulesevents do |t|
      t.references :event, foreign_key: true
      t.references :rule, foreign_key: true

      t.timestamps
    end
  end
end
