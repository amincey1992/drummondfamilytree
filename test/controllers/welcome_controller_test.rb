require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get shoutout" do
    get :shoutout
    assert_response :success
  end

  test "should get partout" do
    get :partout
    assert_response :success
  end

  test "should get videos" do
    get :videos
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
