require 'test_helper'

class HowToMakeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get materials" do
    get :materials
    assert_response :success
  end

  test "should get coloring" do
    get :coloring
    assert_response :success
  end

  test "should get cutting" do
    get :cutting
    assert_response :success
  end

  test "should get braiding1" do
    get :braiding1
    assert_response :success
  end

  test "should get braiding2" do
    get :braiding2
    assert_response :success
  end

  test "should get braiding3" do
    get :braiding3
    assert_response :success
  end

  test "should get handles" do
    get :handles
    assert_response :success
  end

  test "should get popper" do
    get :popper
    assert_response :success
  end

end
