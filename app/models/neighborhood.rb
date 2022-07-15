# frozen_string_literal: true

class Neighborhood < ApplicationRecord
  has_many :locations, dependent: :destroy
end
