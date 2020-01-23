require 'test_helper'

class StepControllerTest < ActionDispatch::IntegrationTest
  test "should get back" do
    get step_back_url
    assert_response :success
  end

  test "should get next" do
    get step_next_url
    assert_response :success
  end

end
