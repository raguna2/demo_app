require 'test_helper'

class Micropost1sControllerTest < ActionController::TestCase
  setup do
    @micropost1 = micropost1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropost1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropost1" do
    assert_difference('Micropost1.count') do
      post :create, micropost1: { content: @micropost1.content, user_id: @micropost1.user_id }
    end

    assert_redirected_to micropost1_path(assigns(:micropost1))
  end

  test "should show micropost1" do
    get :show, id: @micropost1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropost1
    assert_response :success
  end

  test "should update micropost1" do
    patch :update, id: @micropost1, micropost1: { content: @micropost1.content, user_id: @micropost1.user_id }
    assert_redirected_to micropost1_path(assigns(:micropost1))
  end

  test "should destroy micropost1" do
    assert_difference('Micropost1.count', -1) do
      delete :destroy, id: @micropost1
    end

    assert_redirected_to micropost1s_path
  end
end
