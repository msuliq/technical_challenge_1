class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.references :flat, null: false, foreign_key: true
      t.belongs_to :neighborhood, foreign_key: true

      t.timestamps
    end
  end
end
