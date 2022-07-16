class AddNeighborhoodToFlats < ActiveRecord::Migration[7.0]
  def change
    add_reference :flats, :neighborhood, foreign_key: true
  end
end
