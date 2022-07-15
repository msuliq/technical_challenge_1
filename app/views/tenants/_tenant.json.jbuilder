# frozen_string_literal: true

json.extract! tenant, :id, :user_id, :flat_id, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
