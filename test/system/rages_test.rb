require "application_system_test_case"

class RagesTest < ApplicationSystemTestCase
  setup do
    @rage = rages(:one)
  end

  test "visiting the index" do
    visit rages_url
    assert_selector "h1", text: "Rages"
  end

  test "creating a Rage" do
    visit rages_url
    click_on "New Rage"

    fill_in "Activity", with: @rage.activity
    fill_in "Name", with: @rage.name
    click_on "Create Rage"

    assert_text "Rage was successfully created"
    click_on "Back"
  end

  test "updating a Rage" do
    visit rages_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @rage.activity
    fill_in "Name", with: @rage.name
    click_on "Update Rage"

    assert_text "Rage was successfully updated"
    click_on "Back"
  end

  test "destroying a Rage" do
    visit rages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rage was successfully destroyed"
  end
end
