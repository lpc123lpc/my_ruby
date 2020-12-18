require "application_system_test_case"

class DamagebooksTest < ApplicationSystemTestCase
  setup do
    @damagebook = damagebooks(:one)
  end

  test "visiting the index" do
    visit damagebooks_url
    assert_selector "h1", text: "Damagebooks"
  end

  test "creating a Damagebook" do
    visit damagebooks_url
    click_on "New Damagebook"

    fill_in "Bookid", with: @damagebook.bookid
    fill_in "Bookname", with: @damagebook.bookname
    fill_in "Date", with: @damagebook.date
    fill_in "Level", with: @damagebook.level
    click_on "Create Damagebook"

    assert_text "Damagebook was successfully created"
    click_on "Back"
  end

  test "updating a Damagebook" do
    visit damagebooks_url
    click_on "Edit", match: :first

    fill_in "Bookid", with: @damagebook.bookid
    fill_in "Bookname", with: @damagebook.bookname
    fill_in "Date", with: @damagebook.date
    fill_in "Level", with: @damagebook.level
    click_on "Update Damagebook"

    assert_text "Damagebook was successfully updated"
    click_on "Back"
  end

  test "destroying a Damagebook" do
    visit damagebooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Damagebook was successfully destroyed"
  end
end
