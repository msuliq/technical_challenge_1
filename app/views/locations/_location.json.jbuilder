# frozen_string_literal: true

json.extract! location, :id, :flat_id, :neighborhood_id, :created_at, :updated_at
json.url location_url(location, format: :json)
