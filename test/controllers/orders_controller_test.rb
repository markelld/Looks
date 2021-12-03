require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { budget_per_outfit: @order.budget_per_outfit, chest: @order.chest, email: @order.email, first_name: @order.first_name, height: @order.height, last_name: @order.last_name, number_of_outfits: @order.number_of_outfits, reason_for_styling: @order.reason_for_styling, shoe: @order.shoe, stylist_id: @order.stylist_id, user_id: @order.user_id, waist: @order.waist } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { budget_per_outfit: @order.budget_per_outfit, chest: @order.chest, email: @order.email, first_name: @order.first_name, height: @order.height, last_name: @order.last_name, number_of_outfits: @order.number_of_outfits, reason_for_styling: @order.reason_for_styling, shoe: @order.shoe, stylist_id: @order.stylist_id, user_id: @order.user_id, waist: @order.waist } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
