class Location < ApplicationRecord
  belongs_to :flat
  belongs_to :neighborhood, -> { where('SELECT "neighborhood_id".* FROM "neighborhoods" WHERE
    (SELECT "neighborhoods"."maxlat", "neighborhoods"."minlat", "neighborhoods"."maxlong", "neighborhoods"."minlong"
       FROM "neighborhoods" UNION ALL SELECT "flats"."latitude", "flats"."longitude" FROM "flats"
    "flats"."latitude" < "neighborhoods"."maxlat" AND "flats"."latitude" > "neighborhoods"."minlat"
    AND "flats"."longitude" < "neighborhoods"."maxlong" AND "flats"."longitude" > "neighborhoods"."minlong")') } 
  
end
