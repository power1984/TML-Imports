require 'test_helper'

class OrderLinesControllerTest < ActionController::TestCase
  setup do
    @order_line = order_lines(:one)
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

  test "should create order_line" do
    assert_difference('OrderLine.count') do
      post :create, order_line: { freight_type: @order_line.freight_type, height: @order_line.height, length: @order_line.length, online_price_usd: @order_line.online_price_usd, orders_id: @order_line.orders_id, product_description: @order_line.product_description, product_name: @order_line.product_name, quantity: @order_line.quantity, size_color: @order_line.size_color, tml_price_usd: @order_line.tml_price_usd, tracking_number: @order_line.tracking_number, url: @order_line.url, width: @order_line.width }
    end

    assert_redirected_to order_line_path(assigns(:order_line))
  end

  test "should show order_line" do
    get :show, id: @order_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_line
    assert_response :success
  end

  test "should update order_line" do
    patch :update, id: @order_line, order_line: { freight_type: @order_line.freight_type, height: @order_line.height, length: @order_line.length, online_price_usd: @order_line.online_price_usd, orders_id: @order_line.orders_id, product_description: @order_line.product_description, product_name: @order_line.product_name, quantity: @order_line.quantity, size_color: @order_line.size_color, tml_price_usd: @order_line.tml_price_usd, tracking_number: @order_line.tracking_number, url: @order_line.url, width: @order_line.width }
    assert_redirected_to order_line_path(assigns(:order_line))
  end

  test "should destroy order_line" do
    assert_difference('OrderLine.count', -1) do
      delete :destroy, id: @order_line
    end

    assert_redirected_to order_lines_path
  end
end
