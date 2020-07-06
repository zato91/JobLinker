require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get users_name_url
    assert_response :success
  end

  test "should get email" do
    get users_email_url
    assert_response :success
  end

  test "should get password_digest" do
    get users_password_digest_url
    assert_response :success
  end

end
