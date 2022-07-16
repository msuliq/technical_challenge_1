# frozen_string_literal: true

class Flat < ApplicationRecord
  has_many :tenants, dependent: :destroy
  belongs_to :neighborhood, optional: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  # This is draft AREL and SQL code for condition 'belongs_to'
  #
  #  lambda {
  #   where('SELECT "neighborhood_id".* FROM "neighborhoods" WHERE
  #     (SELECT "neighborhoods"."maxlat", "neighborhoods"."minlat", "neighborhoods"."maxlong", "neighborhoods"."minlong"
  #        FROM "neighborhoods" UNION ALL SELECT "flats"."latitude", "flats"."longitude" FROM "flats"
  #     "flats"."latitude" < "neighborhoods"."maxlat" AND "flats"."latitude" > "neighborhoods"."minlat"
  #     AND "flats"."longitude" < "neighborhoods"."maxlong" AND "flats"."longitude" > "neighborhoods"."minlong")')
  #                             }

  # Neighborhood.where(flats(Arel.star).join(neighborhoods).where('flats.latitude > neighborhoods.minlat and flats.latitude < neighborhoods.maxlat and
  #   flats.longitude > neighborhoods.minlong and flats.longitude < neighborhoods.maxlong'))

end
