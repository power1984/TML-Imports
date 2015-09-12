require 'test_helper'

class ShipmentsControllerTest < ActionController::TestCase
  setup do
    @shipment = shipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipment" do
    assert_difference('Shipment.count') do
      post :create, shipment: { customer_id: @shipment.customer_id, height_in_inches: @shipment.height_in_inches, length_in_inches: @shipment.length_in_inches, tracking_id: @shipment.tracking_id, weight_in_lbs: @shipment.weight_in_lbs, width_in_inches: @shipment.width_in_inches }
    end

    assert_redirected_to shipment_path(assigns(:shipment))
  end

  test "should show shipment" do
    get :show, id: @shipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipment
    assert_response :success
  end

  test "should update shipment" do
    patch :update, id: @shipment, shipment: { customer_id: @shipment.customer_id, height_in_inches: @shipment.height_in_inches, length_in_inches: @shipment.length_in_inches, tracking_id: @shipment.tracking_id, weight_in_lbs: @shipment.weight_in_lbs, width_in_inches: @shipment.width_in_inches }
    assert_redirected_to shipment_path(assigns(:shipment))
  end

  test "should destroy shipment" do
    assert_difference('Shipment.count', -1) do
      delete :destroy, id: @shipment
    end

    assert_redirected_to shipments_path
  end
end
