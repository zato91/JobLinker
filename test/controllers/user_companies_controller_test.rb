require 'test_helper'

class UserCompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:integer" do
    get user_companies_user_id:integer_url
    assert_response :success
  end

  test "should get company_id:integer" do
    get user_companies_company_id:integer_url
    assert_response :success
  end

end
