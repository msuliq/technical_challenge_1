class User < ApplicationRecord
    has_one :tenant
    before_destroy :ensure_not_current_tenant
    before_save :downcase_email
    validates :name, presence: true, length: { maximum: 50 }
    # custom regex to check email validity
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }


    private
        # verify that user is not a tenant currently
        def ensure_not_current_tenant
            if tenants.empty?
                return true
            else
                errors.add(:base, 'User is currently a tenant')
                return false
            end
        end

         # Changes email to downcase before storing in database
        def downcase_email
            self.email = email.downcase
        end
end
