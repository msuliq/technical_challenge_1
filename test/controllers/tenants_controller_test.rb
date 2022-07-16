# frozen_string_literal: true

require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest

  test 'should create tenant' do
    assert_difference('Tenant.count') do
      @flat = flats(:three)
      @user = users(:three)
      post tenants_url, params: { tenant: { flat_id: @flat.id, user_id: @user.id } }
    end
  end

  test 'should destroy tenant' do
    assert_difference('Tenant.count', -1) do
      @tenant = tenants(:one)
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
