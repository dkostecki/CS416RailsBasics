require 'test_helper'

class DanielsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daniel = daniels(:one)
  end

  test "should get index" do
    get daniels_url
    assert_response :success
  end

  test "should get new" do
    get new_daniel_url
    assert_response :success
  end

  test "should create daniel" do
    assert_difference('Daniel.count') do
      post daniels_url, params: { daniel: { login: @daniel.login } }
    end

    assert_redirected_to daniel_url(Daniel.last)
  end

  test "should show daniel" do
    get daniel_url(@daniel)
    assert_response :success
  end

  test "should get edit" do
    get edit_daniel_url(@daniel)
    assert_response :success
  end

  test "should update daniel" do
    patch daniel_url(@daniel), params: { daniel: { login: @daniel.login } }
    assert_redirected_to daniel_url(@daniel)
  end

  test "should destroy daniel" do
    assert_difference('Daniel.count', -1) do
      delete daniel_url(@daniel)
    end

    assert_redirected_to daniels_url
  end
end
