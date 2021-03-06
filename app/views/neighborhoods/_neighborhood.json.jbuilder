# frozen_string_literal: true

json.extract! neighborhood, :id, :name, :maxlat, :minlat, :maxlong, :minlong, :created_at, :updated_at
json.url neighborhood_url(neighborhood, format: :json)
