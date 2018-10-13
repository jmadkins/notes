# frozen_string_literal: true

class CreateNotebooks < ActiveRecord::Migration[5.2]
  def change
    create_table :notebooks do |t|
      t.string :name, length: 50
      t.references :users
      t.timestamps
    end
  end
end
