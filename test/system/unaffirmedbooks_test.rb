require "application_system_test_case"

class UnaffirmedbooksTest < ApplicationSystemTestCase
  setup do
    @unaffirmedbook = unaffirmedbooks(:one)
  end

  test "visiting the index" do
    visit unaffirmedbooks_url
    assert_selector "h1", text: "Unaffirmedbooks"
  end

  test "creating a Unaffirmedbook" do
    visit unaffirmedbooks_url
    click_on "New Unaffirmedbook"

    fill_in "Bookid", with: @unaffirmedbook.bookid
    fill_in "Booktitle", with: @unaffirmedbook.booktitle
    fill_in "Expected return", with: @unaffirmedbook.expected_return
    fill_in "Overdue", with: @unaffirmedbook.overdue
    fill_in "Returndate", with: @unaffirmedbook.returndate
    click_on "Create Unaffirmedbook"

    assert_text "Unaffirmedbook was successfully created"
    click_on "Back"
  end

  test "updating a Unaffirmedbook" do
    visit unaffirmedbooks_url
    click_on "Edit", match: :first

    fill_in "Bookid", with: @unaffirmedbook.bookid
    fill_in "Booktitle", with: @unaffirmedbook.booktitle
    fill_in "Expected return", with: @unaffirmedbook.expected_return
    fill_in "Overdue", with: @unaffirmedbook.overdue
    fill_in "Returndate", with: @unaffirmedbook.returndate
    click_on "Update Unaffirmedbook"

    assert_text "Unaffirmedbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Unaffirmedbook" do
    visit unaffirmedbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unaffirmedbook was successfully destroyed"
  end
end
