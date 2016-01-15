require 'test_helper'

class UploadControllerTest < ActionController::TestCase
  test "should get get_image" do
    get :get_image
    assert_response :success
  end

end
