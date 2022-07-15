class Neighborhood < ApplicationRecord
    has_many :locations, dependent: :destroy
end
