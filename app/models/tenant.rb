class Tenant < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :flat

end
