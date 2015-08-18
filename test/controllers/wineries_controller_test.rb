require 'test_helper'

class WineriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Home | Northwest Wineries"
  end

end
