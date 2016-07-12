require 'test_helper'

class AlbumonesControllerTest < ActionController::TestCase
  setup do
    @albumone = albumones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumone" do
    assert_difference('Albumone.count') do
      post :create, albumone: { title: @albumone.title }
    end

    assert_redirected_to albumone_path(assigns(:albumone))
  end

  test "should show albumone" do
    get :show, id: @albumone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumone
    assert_response :success
  end

  test "should update albumone" do
    patch :update, id: @albumone, albumone: { title: @albumone.title }
    assert_redirected_to albumone_path(assigns(:albumone))
  end

  test "should destroy albumone" do
    assert_difference('Albumone.count', -1) do
      delete :destroy, id: @albumone
    end

    assert_redirected_to albumones_path
  end
end
