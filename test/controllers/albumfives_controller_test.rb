require 'test_helper'

class AlbumfivesControllerTest < ActionController::TestCase
  setup do
    @albumfife = albumfives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumfives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumfife" do
    assert_difference('Albumfive.count') do
      post :create, albumfife: { title: @albumfife.title }
    end

    assert_redirected_to albumfife_path(assigns(:albumfife))
  end

  test "should show albumfife" do
    get :show, id: @albumfife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumfife
    assert_response :success
  end

  test "should update albumfife" do
    patch :update, id: @albumfife, albumfife: { title: @albumfife.title }
    assert_redirected_to albumfife_path(assigns(:albumfife))
  end

  test "should destroy albumfife" do
    assert_difference('Albumfive.count', -1) do
      delete :destroy, id: @albumfife
    end

    assert_redirected_to albumfives_path
  end
end
