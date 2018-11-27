class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :desc_rules
      t.string :img_rules

      t.timestamps
    end
  end
end
