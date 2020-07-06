require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get posts_title_url
    assert_response :success
  end

  test "should get message" do
    get posts_message_url
    assert_response :success
  end

  test "should get user_id:integer" do
    get posts_user_id:integer_url
    assert_response :success
  end

end
