require 'test_helper'

class DanielsControllerTest < ActionController::TestCase
  setup do
    @daniel = daniels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daniels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daniel" do
    assert_difference('Daniel.count') do
      post :create, daniel: { login: @daniel.login }
    end

    assert_redirected_to daniel_path(assigns(:daniel))
  end

  test "should show daniel" do
    get :show, id: @daniel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daniel
    assert_response :success
  end

  test "should update daniel" do
    patch :update, id: @daniel, daniel: { login: @daniel.login }
    assert_redirected_to daniel_path(assigns(:daniel))
  end

  test "should destroy daniel" do
    assert_difference('Daniel.count', -1) do
      delete :destroy, id: @daniel
    end

    assert_redirected_to daniels_path
  end
end
