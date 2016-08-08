require 'test_helper'

class CommentSellsControllerTest < ActionController::TestCase
  setup do
    @comment_sell = comment_sells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment_sells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment_sell" do
    assert_difference('CommentSell.count') do
      post :create, comment_sell: { author: @comment_sell.author, comment_entry: @comment_sell.comment_entry }
    end

    assert_redirected_to comment_sell_path(assigns(:comment_sell))
  end

  test "should show comment_sell" do
    get :show, id: @comment_sell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment_sell
    assert_response :success
  end

  test "should update comment_sell" do
    patch :update, id: @comment_sell, comment_sell: { author: @comment_sell.author, comment_entry: @comment_sell.comment_entry }
    assert_redirected_to comment_sell_path(assigns(:comment_sell))
  end

  test "should destroy comment_sell" do
    assert_difference('CommentSell.count', -1) do
      delete :destroy, id: @comment_sell
    end

    assert_redirected_to comment_sells_path
  end
end
