require 'test_helper'

class CompInfosControllerTest < ActionController::TestCase
  setup do
    @comp_info = comp_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comp_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comp_info" do
    assert_difference('CompInfo.count') do
      post :create, comp_info: @comp_info.attributes
    end

    assert_redirected_to comp_info_path(assigns(:comp_info))
  end

  test "should show comp_info" do
    get :show, id: @comp_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comp_info
    assert_response :success
  end

  test "should update comp_info" do
    put :update, id: @comp_info, comp_info: @comp_info.attributes
    assert_redirected_to comp_info_path(assigns(:comp_info))
  end

  test "should destroy comp_info" do
    assert_difference('CompInfo.count', -1) do
      delete :destroy, id: @comp_info
    end

    assert_redirected_to comp_infos_path
  end
end
