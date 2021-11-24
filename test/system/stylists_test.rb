require "application_system_test_case"

class StylistsTest < ApplicationSystemTestCase
  setup do
    @stylist = stylists(:one)
  end

  test "visiting the index" do
    visit stylists_url
    assert_selector "h1", text: "Stylists"
  end

  test "should create Stylist" do
    visit stylists_url
    click_on "New Stylist"

    fill_in "Bio", with: @stylist.bio
    fill_in "Instagram", with: @stylist.instagram
    fill_in "Name", with: @stylist.name
    fill_in "Rate", with: @stylist.rate
    fill_in "User", with: @stylist.user_id
    click_on "Create Stylist"

    assert_text "Stylist was successfully created"
    click_on "Back"
  end

  test "should update Stylist" do
    visit stylists_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @stylist.bio
    fill_in "Instagram", with: @stylist.instagram
    fill_in "Name", with: @stylist.name
    fill_in "Rate", with: @stylist.rate
    fill_in "User", with: @stylist.user_id
    click_on "Update Stylist"

    assert_text "Stylist was successfully updated"
    click_on "Back"
  end

  test "should destroy Stylist" do
    visit stylists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stylist was successfully destroyed"
  end
end
