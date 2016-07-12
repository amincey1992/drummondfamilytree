require 'test_helper'

class AlbumsevensControllerTest < ActionController::TestCase
  setup do
    @albumseven = albumsevens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumsevens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumseven" do
    assert_difference('Albumseven.count') do
      post :create, albumseven: { title: @albumseven.title }
    end

    assert_redirected_to albumseven_path(assigns(:albumseven))
  end

  test "should show albumseven" do
    get :show, id: @albumseven
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumseven
    assert_response :success
  end

  test "should update albumseven" do
    patch :update, id: @albumseven, albumseven: { title: @albumseven.title }
    assert_redirected_to albumseven_path(assigns(:albumseven))
  end

  test "should destroy albumseven" do
    assert_difference('Albumseven.count', -1) do
      delete :destroy, id: @albumseven
    end

    assert_redirected_to albumsevens_path
  end
end
