class Flat < ApplicationRecord
    has_many :tenants, dependent: :destroy

    def add_tenant(user_id)
        current_tenant = tenants.find_by(user_id: user_id)
        if current_tenant
            current_tenant.quantity += 1
        else
            current_tenant = tenants.build(user_id: user_id)
        end
            current_tenant
    end
    
end
