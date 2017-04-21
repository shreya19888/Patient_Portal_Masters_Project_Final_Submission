require 'test_helper'

class CustomVitalsControllerTest < ActionController::TestCase
  setup do
    @custom_vital = custom_vitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_vitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_vital" do
    assert_difference('CustomVital.count') do
      post :create, custom_vital: { name: @custom_vital.name, user_id_id: @custom_vital.user_id_id, value: @custom_vital.value }
    end

    assert_redirected_to custom_vital_path(assigns(:custom_vital))
  end

  test "should show custom_vital" do
    get :show, id: @custom_vital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom_vital
    assert_response :success
  end

  test "should update custom_vital" do
    patch :update, id: @custom_vital, custom_vital: { name: @custom_vital.name, user_id_id: @custom_vital.user_id_id, value: @custom_vital.value }
    assert_redirected_to custom_vital_path(assigns(:custom_vital))
  end

  test "should destroy custom_vital" do
    assert_difference('CustomVital.count', -1) do
      delete :destroy, id: @custom_vital
    end

    assert_redirected_to custom_vitals_path
  end
end
