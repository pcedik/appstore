require 'test_helper'

class AplikacesControllerTest < ActionController::TestCase
  setup do
    @aplikace = aplikaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aplikaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aplikace" do
    assert_difference('Aplikace.count') do
      post :create, aplikace: {  }
    end

    assert_redirected_to aplikace_path(assigns(:aplikace))
  end

  test "should show aplikace" do
    get :show, id: @aplikace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aplikace
    assert_response :success
  end

  test "should update aplikace" do
    patch :update, id: @aplikace, aplikace: {  }
    assert_redirected_to aplikace_path(assigns(:aplikace))
  end

  test "should destroy aplikace" do
    assert_difference('Aplikace.count', -1) do
      delete :destroy, id: @aplikace
    end

    assert_redirected_to aplikaces_path
  end
end
