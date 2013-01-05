require 'test_helper'

class CostBillsControllerTest < ActionController::TestCase
  setup do
    @cost_bill = cost_bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cost_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost_bill" do
    assert_difference('CostBill.count') do
      post :create, cost_bill: { billdate: @cost_bill.billdate, money: @cost_bill.money, remarks: @cost_bill.remarks }
    end

    assert_redirected_to cost_bill_path(assigns(:cost_bill))
  end

  test "should show cost_bill" do
    get :show, id: @cost_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost_bill
    assert_response :success
  end

  test "should update cost_bill" do
    put :update, id: @cost_bill, cost_bill: { billdate: @cost_bill.billdate, money: @cost_bill.money, remarks: @cost_bill.remarks }
    assert_redirected_to cost_bill_path(assigns(:cost_bill))
  end

  test "should destroy cost_bill" do
    assert_difference('CostBill.count', -1) do
      delete :destroy, id: @cost_bill
    end

    assert_redirected_to cost_bills_path
  end
end
