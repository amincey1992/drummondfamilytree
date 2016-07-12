require 'test_helper'

class AlbumninesControllerTest < ActionController::TestCase
  setup do
    @albumnine = albumnines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumnines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumnine" do
    assert_difference('Albumnine.count') do
      post :create, albumnine: { title: @albumnine.title }
    end

    assert_redirected_to albumnine_path(assigns(:albumnine))
  end

  test "should show albumnine" do
    get :show, id: @albumnine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumnine
    assert_response :success
  end

  test "should update albumnine" do
    patch :update, id: @albumnine, albumnine: { title: @albumnine.title }
    assert_redirected_to albumnine_path(assigns(:albumnine))
  end

  test "should destroy albumnine" do
    assert_difference('Albumnine.count', -1) do
      delete :destroy, id: @albumnine
    end

    assert_redirected_to albumnines_path
  end
end
