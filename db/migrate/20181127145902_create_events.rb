class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title_event
      t.string :desc_event
      t.string :img_event

      t.timestamps
    end
  end
end
