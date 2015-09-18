require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { customers_id: @order.customers_id, date: @order.date, down_payment: @order.down_payment, estimated_weight: @order.estimated_weight, freight_type: @order.freight_type, height: @order.height, invoice_numbers: @order.invoice_numbers, length: @order.length, online_price: @order.online_price, product_description: @order.product_description, product_name: @order.product_name, quantity: @order.quantity, size_color: @order.size_color, tml_price: @order.tml_price, url: @order.url, width: @order.width }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { customers_id: @order.customers_id, date: @order.date, down_payment: @order.down_payment, estimated_weight: @order.estimated_weight, freight_type: @order.freight_type, height: @order.height, invoice_numbers: @order.invoice_numbers, length: @order.length, online_price: @order.online_price, product_description: @order.product_description, product_name: @order.product_name, quantity: @order.quantity, size_color: @order.size_color, tml_price: @order.tml_price, url: @order.url, width: @order.width }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
