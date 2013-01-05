require 'test_helper'

class ComeInBillsControllerTest < ActionController::TestCase
  setup do
    @come_in_bill = come_in_bills(:one)
    @come_in_type = ComeInType.new(:name => "wage")
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:come_in_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create come_in_bill" do
    assert_difference('ComeInBill.count') do
      post :create, come_in_bill: { billdate: @come_in_bill.billdate, money: @come_in_bill.money, remarks: @come_in_bill.remarks}, come_in_type: {id: @come_in_type.id }
    end

    assert_redirected_to come_in_bill_path(assigns(:come_in_bill))
  end

  test "should show come_in_bill" do
    get :show, id: @come_in_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @come_in_bill
    assert_response :success
  end

  test "should update come_in_bill" do
    put :update, id: @come_in_bill, come_in_bill: { billdate: @come_in_bill.billdate, money: @come_in_bill.money, remarks: @come_in_bill.remarks }
    assert_redirected_to come_in_bill_path(assigns(:come_in_bill))
  end

  test "should destroy come_in_bill" do
    assert_difference('ComeInBill.count', -1) do
      delete :destroy, id: @come_in_bill
    end

    assert_redirected_to come_in_bills_path
  end
end
