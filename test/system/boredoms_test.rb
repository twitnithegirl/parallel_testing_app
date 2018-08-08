require "application_system_test_case"

class BoredomsTest < ApplicationSystemTestCase
  setup do
    @boredom = boredoms(:one)
  end

  test "visiting the index" do
    visit boredoms_url
    assert_selector "h1", text: "Boredoms"
  end

  test "creating a Boredom" do
    visit boredoms_url
    click_on "New Boredom"

    fill_in "Activity", with: @boredom.activity
    fill_in "Name", with: @boredom.name
    click_on "Create Boredom"

    assert_text "Boredom was successfully created"
    click_on "Back"
  end

  test "updating a Boredom" do
    visit boredoms_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @boredom.activity
    fill_in "Name", with: @boredom.name
    click_on "Update Boredom"

    assert_text "Boredom was successfully updated"
    click_on "Back"
  end

  test "destroying a Boredom" do
    visit boredoms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boredom was successfully destroyed"
  end
end
