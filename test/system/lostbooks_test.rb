require "application_system_test_case"

class LostbooksTest < ApplicationSystemTestCase
  setup do
    @lostbook = lostbooks(:one)
  end

  test "visiting the index" do
    visit lostbooks_url
    assert_selector "h1", text: "Lostbooks"
  end

  test "creating a Lostbook" do
    visit lostbooks_url
    click_on "New Lostbook"

    fill_in "Author", with: @lostbook.author
    fill_in "Bookid", with: @lostbook.bookid
    fill_in "Booktitle", with: @lostbook.booktitle
    fill_in "Press", with: @lostbook.press
    fill_in "Price", with: @lostbook.price
    click_on "Create Lostbook"

    assert_text "Lostbook was successfully created"
    click_on "Back"
  end

  test "updating a Lostbook" do
    visit lostbooks_url
    click_on "Edit", match: :first

    fill_in "Author", with: @lostbook.author
    fill_in "Bookid", with: @lostbook.bookid
    fill_in "Booktitle", with: @lostbook.booktitle
    fill_in "Press", with: @lostbook.press
    fill_in "Price", with: @lostbook.price
    click_on "Update Lostbook"

    assert_text "Lostbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Lostbook" do
    visit lostbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lostbook was successfully destroyed"
  end
end
