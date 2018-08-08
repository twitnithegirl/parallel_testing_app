require "application_system_test_case"

class FunsTest < ApplicationSystemTestCase
  setup do
    @fun = funs(:one)
  end

  test "visiting the index" do
    visit funs_url
    assert_selector "h1", text: "Funs"
  end

  test "creating a Fun" do
    visit funs_url
    click_on "New Fun"

    fill_in "Activity", with: @fun.activity
    fill_in "Name", with: @fun.name
    click_on "Create Fun"

    assert_text "Fun was successfully created"
    click_on "Back"
  end

  test "updating a Fun" do
    visit funs_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @fun.activity
    fill_in "Name", with: @fun.name
    click_on "Update Fun"

    assert_text "Fun was successfully updated"
    click_on "Back"
  end

  test "destroying a Fun" do
    visit funs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fun was successfully destroyed"
  end
end
