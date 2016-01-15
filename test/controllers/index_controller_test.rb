require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get usercenter" do
    get :usercenter
    assert_response :success
  end

end
