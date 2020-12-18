require "application_system_test_case"

class BorrowtablesTest < ApplicationSystemTestCase
  setup do
    @borrowtable = borrowtables(:one)
  end

  test "visiting the index" do
    visit borrowtables_url
    assert_selector "h1", text: "Borrowtables"
  end

  test "creating a Borrowtable" do
    visit borrowtables_url
    click_on "New Borrowtable"

    fill_in "Bookid", with: @borrowtable.bookid
    fill_in "Bookname", with: @borrowtable.bookname
    fill_in "Borrowdate", with: @borrowtable.borrowdate
    fill_in "Borrowerid", with: @borrowtable.borrowerid
    fill_in "Returndate", with: @borrowtable.returndate
    click_on "Create Borrowtable"

    assert_text "Borrowtable was successfully created"
    click_on "Back"
  end

  test "updating a Borrowtable" do
    visit borrowtables_url
    click_on "Edit", match: :first

    fill_in "Bookid", with: @borrowtable.bookid
    fill_in "Bookname", with: @borrowtable.bookname
    fill_in "Borrowdate", with: @borrowtable.borrowdate
    fill_in "Borrowerid", with: @borrowtable.borrowerid
    fill_in "Returndate", with: @borrowtable.returndate
    click_on "Update Borrowtable"

    assert_text "Borrowtable was successfully updated"
    click_on "Back"
  end

  test "destroying a Borrowtable" do
    visit borrowtables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Borrowtable was successfully destroyed"
  end
end
