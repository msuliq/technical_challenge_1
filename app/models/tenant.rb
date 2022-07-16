# frozen_string_literal: true

class Tenant < ApplicationRecord
  belongs_to :user, optional: true, foreign_key: :user_id
  belongs_to :flat, foreign_key: :flat_id
end
