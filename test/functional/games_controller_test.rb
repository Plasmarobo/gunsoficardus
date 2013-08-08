require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get mygames" do
    get :mygames
    assert_response :success
  end

end
