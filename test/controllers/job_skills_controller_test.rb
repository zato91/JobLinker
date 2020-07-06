require 'test_helper'

class JobSkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get joblisting_id:integer" do
    get job_skills_joblisting_id:integer_url
    assert_response :success
  end

  test "should get skill_id:integer" do
    get job_skills_skill_id:integer_url
    assert_response :success
  end

end
