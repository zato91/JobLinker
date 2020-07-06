require 'test_helper'

class UserSkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:integer" do
    get user_skills_user_id:integer_url
    assert_response :success
  end

  test "should get skill_id:integer" do
    get user_skills_skill_id:integer_url
    assert_response :success
  end

end
