require 'test_helper'

class AlbumtensControllerTest < ActionController::TestCase
  setup do
    @albumten = albumtens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumtens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumten" do
    assert_difference('Albumten.count') do
      post :create, albumten: { title: @albumten.title }
    end

    assert_redirected_to albumten_path(assigns(:albumten))
  end

  test "should show albumten" do
    get :show, id: @albumten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumten
    assert_response :success
  end

  test "should update albumten" do
    patch :update, id: @albumten, albumten: { title: @albumten.title }
    assert_redirected_to albumten_path(assigns(:albumten))
  end

  test "should destroy albumten" do
    assert_difference('Albumten.count', -1) do
      delete :destroy, id: @albumten
    end

    assert_redirected_to albumtens_path
  end
end
