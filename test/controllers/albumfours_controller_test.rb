require 'test_helper'

class AlbumfoursControllerTest < ActionController::TestCase
  setup do
    @albumfour = albumfours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumfours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumfour" do
    assert_difference('Albumfour.count') do
      post :create, albumfour: { title: @albumfour.title }
    end

    assert_redirected_to albumfour_path(assigns(:albumfour))
  end

  test "should show albumfour" do
    get :show, id: @albumfour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumfour
    assert_response :success
  end

  test "should update albumfour" do
    patch :update, id: @albumfour, albumfour: { title: @albumfour.title }
    assert_redirected_to albumfour_path(assigns(:albumfour))
  end

  test "should destroy albumfour" do
    assert_difference('Albumfour.count', -1) do
      delete :destroy, id: @albumfour
    end

    assert_redirected_to albumfours_path
  end
end
