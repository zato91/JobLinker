require 'test_helper'

class JobListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get job_listings_title_url
    assert_response :success
  end

  test "should get description" do
    get job_listings_description_url
    assert_response :success
  end

  test "should get company_id:integer" do
    get job_listings_company_id:integer_url
    assert_response :success
  end

  test "should get salary:integer" do
    get job_listings_salary:integer_url
    assert_response :success
  end

end
