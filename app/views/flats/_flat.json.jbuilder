# frozen_string_literal: true

json.extract! flat, :id, :name, :latitude, :longitude, :created_at, :updated_at
json.url flat_url(flat, format: :json)
