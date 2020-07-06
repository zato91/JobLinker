require 'test_helper'

class SkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get skills_name_url
    assert_response :success
  end

end
