require "application_system_test_case"

class JoysTest < ApplicationSystemTestCase
  setup do
    @joy = joys(:one)
  end

  test "visiting the index" do
    visit joys_url
    assert_selector "h1", text: "Joys"
  end

  test "creating a Joy" do
    visit joys_url
    click_on "New Joy"

    fill_in "Activity", with: @joy.activity
    fill_in "Name", with: @joy.name
    click_on "Create Joy"

    assert_text "Joy was successfully created"
    click_on "Back"
  end

  test "updating a Joy" do
    visit joys_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @joy.activity
    fill_in "Name", with: @joy.name
    click_on "Update Joy"

    assert_text "Joy was successfully updated"
    click_on "Back"
  end

  test "destroying a Joy" do
    visit joys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Joy was successfully destroyed"
  end
end
