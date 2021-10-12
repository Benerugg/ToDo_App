require "application_system_test_case"

class AdvancedSearchesTest < ApplicationSystemTestCase
  setup do
    @advanced_search = advanced_searches(:one)
  end

  test "visiting the index" do
    visit advanced_searches_url
    assert_selector "h1", text: "Advanced Searches"
  end

  test "creating a Advanced search" do
    visit advanced_searches_url
    click_on "New Advanced Search"

    click_on "Create Advanced search"

    assert_text "Advanced search was successfully created"
    click_on "Back"
  end

  test "updating a Advanced search" do
    visit advanced_searches_url
    click_on "Edit", match: :first

    click_on "Update Advanced search"

    assert_text "Advanced search was successfully updated"
    click_on "Back"
  end

  test "destroying a Advanced search" do
    visit advanced_searches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advanced search was successfully destroyed"
  end
end
