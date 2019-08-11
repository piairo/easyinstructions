require 'test_helper'

class ArrivalControllerTest < ActionDispatch::IntegrationTest
  test "should get back" do
    get arrival_back_url
    assert_response :success
  end

  test "should get next" do
    get arrival_next_url
    assert_response :success
  end

end
