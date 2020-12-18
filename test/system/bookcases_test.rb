require "application_system_test_case"

class BookcasesTest < ApplicationSystemTestCase
  setup do
    @bookcase = bookcases(:one)
  end

  test "visiting the index" do
    visit bookcases_url
    assert_selector "h1", text: "Bookcases"
  end

  test "creating a Bookcase" do
    visit bookcases_url
    click_on "New Bookcase"

    fill_in "Bookcaseid", with: @bookcase.bookcaseid
    fill_in "Column", with: @bookcase.column
    fill_in "Floor", with: @bookcase.floor
    fill_in "Line", with: @bookcase.line
    fill_in "Number", with: @bookcase.number
    fill_in "Partition", with: @bookcase.partition
    click_on "Create Bookcase"

    assert_text "Bookcase was successfully created"
    click_on "Back"
  end

  test "updating a Bookcase" do
    visit bookcases_url
    click_on "Edit", match: :first

    fill_in "Bookcaseid", with: @bookcase.bookcaseid
    fill_in "Column", with: @bookcase.column
    fill_in "Floor", with: @bookcase.floor
    fill_in "Line", with: @bookcase.line
    fill_in "Number", with: @bookcase.number
    fill_in "Partition", with: @bookcase.partition
    click_on "Update Bookcase"

    assert_text "Bookcase was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookcase" do
    visit bookcases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookcase was successfully destroyed"
  end
end
