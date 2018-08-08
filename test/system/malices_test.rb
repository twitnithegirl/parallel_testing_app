require "application_system_test_case"

class MalicesTest < ApplicationSystemTestCase
  setup do
    @malice = malices(:one)
  end

  test "visiting the index" do
    visit malices_url
    assert_selector "h1", text: "Malices"
  end

  test "creating a Malice" do
    visit malices_url
    click_on "New Malice"

    fill_in "Activity", with: @malice.activity
    fill_in "Name", with: @malice.name
    click_on "Create Malice"

    assert_text "Malice was successfully created"
    click_on "Back"
  end

  test "updating a Malice" do
    visit malices_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @malice.activity
    fill_in "Name", with: @malice.name
    click_on "Update Malice"

    assert_text "Malice was successfully updated"
    click_on "Back"
  end

  test "destroying a Malice" do
    visit malices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Malice was successfully destroyed"
  end
end
