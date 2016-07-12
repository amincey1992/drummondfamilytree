require 'test_helper'

class AlbumsixesControllerTest < ActionController::TestCase
  setup do
    @albumsix = albumsixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumsixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumsix" do
    assert_difference('Albumsix.count') do
      post :create, albumsix: { title: @albumsix.title }
    end

    assert_redirected_to albumsix_path(assigns(:albumsix))
  end

  test "should show albumsix" do
    get :show, id: @albumsix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumsix
    assert_response :success
  end

  test "should update albumsix" do
    patch :update, id: @albumsix, albumsix: { title: @albumsix.title }
    assert_redirected_to albumsix_path(assigns(:albumsix))
  end

  test "should destroy albumsix" do
    assert_difference('Albumsix.count', -1) do
      delete :destroy, id: @albumsix
    end

    assert_redirected_to albumsixes_path
  end
end
