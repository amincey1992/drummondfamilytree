require 'test_helper'

class AlbumeightsControllerTest < ActionController::TestCase
  setup do
    @albumeight = albumeights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumeights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumeight" do
    assert_difference('Albumeight.count') do
      post :create, albumeight: { title: @albumeight.title }
    end

    assert_redirected_to albumeight_path(assigns(:albumeight))
  end

  test "should show albumeight" do
    get :show, id: @albumeight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumeight
    assert_response :success
  end

  test "should update albumeight" do
    patch :update, id: @albumeight, albumeight: { title: @albumeight.title }
    assert_redirected_to albumeight_path(assigns(:albumeight))
  end

  test "should destroy albumeight" do
    assert_difference('Albumeight.count', -1) do
      delete :destroy, id: @albumeight
    end

    assert_redirected_to albumeights_path
  end
end
