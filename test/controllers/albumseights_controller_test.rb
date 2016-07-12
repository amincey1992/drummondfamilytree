require 'test_helper'

class AlbumseightsControllerTest < ActionController::TestCase
  setup do
    @albumseight = albumseights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumseights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumseight" do
    assert_difference('Albumseight.count') do
      post :create, albumseight: { title: @albumseight.title }
    end

    assert_redirected_to albumseight_path(assigns(:albumseight))
  end

  test "should show albumseight" do
    get :show, id: @albumseight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumseight
    assert_response :success
  end

  test "should update albumseight" do
    patch :update, id: @albumseight, albumseight: { title: @albumseight.title }
    assert_redirected_to albumseight_path(assigns(:albumseight))
  end

  test "should destroy albumseight" do
    assert_difference('Albumseight.count', -1) do
      delete :destroy, id: @albumseight
    end

    assert_redirected_to albumseights_path
  end
end
