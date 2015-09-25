require 'test_helper'

class OderStatusesControllerTest < ActionController::TestCase
  setup do
    @oder_status = oder_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oder_status" do
    assert_difference('OrderStatus.count') do
      post :create, oder_status: { arrived_mia: @oder_status.arrived_mia, arrived_sme: @oder_status.arrived_sme, ordered_date: @oder_status.ordered_date, orders_id: @oder_status.orders_id, picked_up: @oder_status.picked_up }
    end

    assert_redirected_to oder_status_path(assigns(:oder_status))
  end

  test "should show oder_status" do
    get :show, id: @oder_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oder_status
    assert_response :success
  end

  test "should update oder_status" do
    patch :update, id: @oder_status, oder_status: { arrived_mia: @oder_status.arrived_mia, arrived_sme: @oder_status.arrived_sme, ordered_date: @oder_status.ordered_date, orders_id: @oder_status.orders_id, picked_up: @oder_status.picked_up }
    assert_redirected_to oder_status_path(assigns(:oder_status))
  end

  test "should destroy oder_status" do
    assert_difference('OrderStatus.count', -1) do
      delete :destroy, id: @oder_status
    end

    assert_redirected_to oder_statuses_path
  end
end
