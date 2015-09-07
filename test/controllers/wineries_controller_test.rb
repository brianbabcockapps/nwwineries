require 'test_helper'

class WineriesControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
    assert_select "title", "Northwest Wineries"
  end

end
