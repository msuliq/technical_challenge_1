# frozen_string_literal: true

class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.references :user, foreign_key: true
      t.belongs_to :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
