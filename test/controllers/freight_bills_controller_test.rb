require 'test_helper'

class FreightBillsControllerTest < ActionController::TestCase
  setup do
    @freight_bill = freight_bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freight_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freight_bill" do
    assert_difference('FreightBill.count') do
      post :create, freight_bill: { cost: @freight_bill.cost, date: @freight_bill.date, invoice_number: @freight_bill.invoice_number, shipper_id: @freight_bill.shipper_id, total_volume_in_cft: @freight_bill.total_volume_in_cft, total_weight_in_lbs: @freight_bill.total_weight_in_lbs }
    end

    assert_redirected_to freight_bill_path(assigns(:freight_bill))
  end

  test "should show freight_bill" do
    get :show, id: @freight_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freight_bill
    assert_response :success
  end

  test "should update freight_bill" do
    patch :update, id: @freight_bill, freight_bill: { cost: @freight_bill.cost, date: @freight_bill.date, invoice_number: @freight_bill.invoice_number, shipper_id: @freight_bill.shipper_id, total_volume_in_cft: @freight_bill.total_volume_in_cft, total_weight_in_lbs: @freight_bill.total_weight_in_lbs }
    assert_redirected_to freight_bill_path(assigns(:freight_bill))
  end

  test "should destroy freight_bill" do
    assert_difference('FreightBill.count', -1) do
      delete :destroy, id: @freight_bill
    end

    assert_redirected_to freight_bills_path
  end
end
