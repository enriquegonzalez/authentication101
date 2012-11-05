require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get restaurants" do
    get :restaurants
    assert_response :success
  end

  test "should get activities" do
    get :activities
    assert_response :success
  end

end
