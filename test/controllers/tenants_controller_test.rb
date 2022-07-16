# frozen_string_literal: true

require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test 'should create tenant' do
    assert_difference('Tenant.count') do
      post tenants_url, params: { tenant: { flat_id: @tenant.flat_id, user_id: @tenant.user_id } }
    end

    assert_redirected_to tenant_url(Tenant.last)
  end

  test 'should destroy tenant' do
    assert_difference('Tenant.count', -1) do
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
