require "application_system_test_case"

class FelicitiesTest < ApplicationSystemTestCase
  setup do
    @felicity = felicities(:one)
  end

  test "visiting the index" do
    visit felicities_url
    assert_selector "h1", text: "Felicities"
  end

  test "creating a Felicity" do
    visit felicities_url
    click_on "New Felicity"

    fill_in "Activity", with: @felicity.activity
    fill_in "Name", with: @felicity.name
    click_on "Create Felicity"

    assert_text "Felicity was successfully created"
    click_on "Back"
  end

  test "updating a Felicity" do
    visit felicities_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @felicity.activity
    fill_in "Name", with: @felicity.name
    click_on "Update Felicity"

    assert_text "Felicity was successfully updated"
    click_on "Back"
  end

  test "destroying a Felicity" do
    visit felicities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Felicity was successfully destroyed"
  end
end
