require 'test_helper'

class AlbumtwosControllerTest < ActionController::TestCase
  setup do
    @albumtwo = albumtwos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumtwos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumtwo" do
    assert_difference('Albumtwo.count') do
      post :create, albumtwo: { title: @albumtwo.title }
    end

    assert_redirected_to albumtwo_path(assigns(:albumtwo))
  end

  test "should show albumtwo" do
    get :show, id: @albumtwo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumtwo
    assert_response :success
  end

  test "should update albumtwo" do
    patch :update, id: @albumtwo, albumtwo: { title: @albumtwo.title }
    assert_redirected_to albumtwo_path(assigns(:albumtwo))
  end

  test "should destroy albumtwo" do
    assert_difference('Albumtwo.count', -1) do
      delete :destroy, id: @albumtwo
    end

    assert_redirected_to albumtwos_path
  end
end
