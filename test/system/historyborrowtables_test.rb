require "application_system_test_case"

class HistoryborrowtablesTest < ApplicationSystemTestCase
  setup do
    @historyborrowtable = historyborrowtables(:one)
  end

  test "visiting the index" do
    visit historyborrowtables_url
    assert_selector "h1", text: "Historyborrowtables"
  end

  test "creating a Historyborrowtable" do
    visit historyborrowtables_url
    click_on "New Historyborrowtable"

    fill_in "Bookid", with: @historyborrowtable.bookid
    fill_in "Bookname", with: @historyborrowtable.bookname
    fill_in "Borrowdate", with: @historyborrowtable.borrowdate
    fill_in "Borrowerid", with: @historyborrowtable.borrowerid
    fill_in "Returndate", with: @historyborrowtable.returndate
    click_on "Create Historyborrowtable"

    assert_text "Historyborrowtable was successfully created"
    click_on "Back"
  end

  test "updating a Historyborrowtable" do
    visit historyborrowtables_url
    click_on "Edit", match: :first

    fill_in "Bookid", with: @historyborrowtable.bookid
    fill_in "Bookname", with: @historyborrowtable.bookname
    fill_in "Borrowdate", with: @historyborrowtable.borrowdate
    fill_in "Borrowerid", with: @historyborrowtable.borrowerid
    fill_in "Returndate", with: @historyborrowtable.returndate
    click_on "Update Historyborrowtable"

    assert_text "Historyborrowtable was successfully updated"
    click_on "Back"
  end

  test "destroying a Historyborrowtable" do
    visit historyborrowtables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historyborrowtable was successfully destroyed"
  end
end
