# frozen_string_literal: true

class AddField < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :username, :text
    add_column :admins, :email, :text
    add_column :admins, :password, :text
  end
end
