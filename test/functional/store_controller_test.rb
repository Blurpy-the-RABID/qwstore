require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.navigation a', minimum: 5
    assert_select '.navigation_this', maximum: 1
    assert_select '#main .entry', 3
    assert_select 'h3', '3-ft. White Nylon Whip'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end
end