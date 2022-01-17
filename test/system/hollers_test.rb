require "application_system_test_case"

class HollersTest < ApplicationSystemTestCase
  setup do
    @holler = hollers(:one)
  end

  test "visiting the index" do
    visit hollers_url
    assert_selector "h1", text: "Hollers"
  end

  test "should create holler" do
    visit hollers_url
    click_on "New holler"

    fill_in "Message", with: @holler.message
    fill_in "Subtitle", with: @holler.subtitle
    fill_in "Title", with: @holler.title
    click_on "Create Holler"

    assert_text "Holler was successfully created"
    click_on "Back"
  end

  test "should update Holler" do
    visit holler_url(@holler)
    click_on "Edit this holler", match: :first

    fill_in "Message", with: @holler.message
    fill_in "Subtitle", with: @holler.subtitle
    fill_in "Title", with: @holler.title
    click_on "Update Holler"

    assert_text "Holler was successfully updated"
    click_on "Back"
  end

  test "should destroy Holler" do
    visit holler_url(@holler)
    click_on "Destroy this holler", match: :first

    assert_text "Holler was successfully destroyed"
  end
end
