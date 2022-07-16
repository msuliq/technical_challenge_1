# frozen_string_literal: true

class Neighborhood < ApplicationRecord
  has_many :flats, dependent: :destroy
  validates :maxlat, presence: true
  validates :minlat, presence: true
  validates :maxlong, presence: true
  validates :maxlong, presence: true
end
