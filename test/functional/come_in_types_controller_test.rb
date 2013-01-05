require 'test_helper'

class ComeInTypesControllerTest < ActionController::TestCase
  setup do
    @come_in_type = come_in_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:come_in_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create come_in_type" do
    assert_difference('ComeInType.count') do
      post :create, come_in_type: { name: @come_in_type.name }
    end

    assert_redirected_to come_in_type_path(assigns(:come_in_type))
  end

  test "should show come_in_type" do
    get :show, id: @come_in_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @come_in_type
    assert_response :success
  end

  test "should update come_in_type" do
    put :update, id: @come_in_type, come_in_type: { name: @come_in_type.name }
    assert_redirected_to come_in_type_path(assigns(:come_in_type))
  end

  test "should destroy come_in_type" do
    assert_difference('ComeInType.count', -1) do
      delete :destroy, id: @come_in_type
    end

    assert_redirected_to come_in_types_path
  end
end
