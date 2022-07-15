class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.float :latitude, :precision => 6, :scale => 10, null: false
      t.float :longitude, :precision => 6, :scale => 10, null: false

      t.timestamps
    end
  end
end
