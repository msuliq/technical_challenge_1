# frozen_string_literal: true

class CreateNeighborhoods < ActiveRecord::Migration[7.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.float :maxlat, precision: 6, scale: 6, null: false
      t.float :minlat, precision: 6, scale: 6, null: false
      t.float :maxlong, precision: 6, scale: 6, null: false
      t.float :minlong, precision: 6, scale: 6, null: false

      t.timestamps
    end
  end
end
