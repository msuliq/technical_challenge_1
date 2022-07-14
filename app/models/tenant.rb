class Tenant < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :flat
  validates :flat_id, presence: true

  def total_tenants
    user.quantity
  end
end
