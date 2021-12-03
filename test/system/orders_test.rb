require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Budget per outfit", with: @order.budget_per_outfit
    fill_in "Chest", with: @order.chest
    fill_in "Email", with: @order.email
    fill_in "First name", with: @order.first_name
    fill_in "Height", with: @order.height
    fill_in "Last name", with: @order.last_name
    fill_in "Number of outfits", with: @order.number_of_outfits
    fill_in "Reason for styling", with: @order.reason_for_styling
    fill_in "Shoe", with: @order.shoe
    fill_in "Stylist", with: @order.stylist_id
    fill_in "User", with: @order.user_id
    fill_in "Waist", with: @order.waist
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Budget per outfit", with: @order.budget_per_outfit
    fill_in "Chest", with: @order.chest
    fill_in "Email", with: @order.email
    fill_in "First name", with: @order.first_name
    fill_in "Height", with: @order.height
    fill_in "Last name", with: @order.last_name
    fill_in "Number of outfits", with: @order.number_of_outfits
    fill_in "Reason for styling", with: @order.reason_for_styling
    fill_in "Shoe", with: @order.shoe
    fill_in "Stylist", with: @order.stylist_id
    fill_in "User", with: @order.user_id
    fill_in "Waist", with: @order.waist
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
