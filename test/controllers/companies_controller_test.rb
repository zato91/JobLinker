require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get companies_name_url
    assert_response :success
  end

  test "should get location" do
    get companies_location_url
    assert_response :success
  end

  test "should get description" do
    get companies_description_url
    assert_response :success
  end

  test "should get industry" do
    get companies_industry_url
    assert_response :success
  end

end
