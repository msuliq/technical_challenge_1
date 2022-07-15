# frozen_string_literal: true

class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.float :latitude, precision: 6, scale: 6, null: false
      t.float :longitude, precision: 6, scale: 6, null: false

      t.timestamps
    end
  end
end
