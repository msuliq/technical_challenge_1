# frozen_string_literal: true

class User < ApplicationRecord
  has_one :tenant
  has_one :flat, through: :tenant
  before_destroy :ensure_not_current_tenant
  before_save :downcase_email
  validates :name, presence: true, length: { maximum: 50 }
  # custom regex to check email validity
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  private

  # verify that user is not a tenant currently
  def ensure_not_current_tenant
    if tenant.nil?
      true
    else
      errors.add(:base, 'User is currently a tenant')
      false
    end
  end

  # Changes email to downcase before storing in database
  def downcase_email
    self.email = email.downcase
  end
end
