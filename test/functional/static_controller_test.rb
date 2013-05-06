require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get whipcare" do
    get :whipcare
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
