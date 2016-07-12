require 'test_helper'

class AlbumthreesControllerTest < ActionController::TestCase
  setup do
    @albumthree = albumthrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumthrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumthree" do
    assert_difference('Albumthree.count') do
      post :create, albumthree: { title: @albumthree.title }
    end

    assert_redirected_to albumthree_path(assigns(:albumthree))
  end

  test "should show albumthree" do
    get :show, id: @albumthree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumthree
    assert_response :success
  end

  test "should update albumthree" do
    patch :update, id: @albumthree, albumthree: { title: @albumthree.title }
    assert_redirected_to albumthree_path(assigns(:albumthree))
  end

  test "should destroy albumthree" do
    assert_difference('Albumthree.count', -1) do
      delete :destroy, id: @albumthree
    end

    assert_redirected_to albumthrees_path
  end
end
