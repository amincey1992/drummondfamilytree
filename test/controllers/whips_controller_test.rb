require 'test_helper'

class WhipsControllerTest < ActionController::TestCase
  setup do
    @whip = whips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whip" do
    assert_difference('Whip.count') do
      post :create, whip: { email: @whip.email, integer: @whip.integer, model: @whip.model, mods: @whip.mods, name: @whip.name, year: @whip.year }
    end

    assert_redirected_to whip_path(assigns(:whip))
  end

  test "should show whip" do
    get :show, id: @whip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whip
    assert_response :success
  end

  test "should update whip" do
    patch :update, id: @whip, whip: { email: @whip.email, integer: @whip.integer, model: @whip.model, mods: @whip.mods, name: @whip.name, year: @whip.year }
    assert_redirected_to whip_path(assigns(:whip))
  end

  test "should destroy whip" do
    assert_difference('Whip.count', -1) do
      delete :destroy, id: @whip
    end

    assert_redirected_to whips_path
  end
end
