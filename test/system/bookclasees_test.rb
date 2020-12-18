require "application_system_test_case"

class BookclaseesTest < ApplicationSystemTestCase
  setup do
    @bookclasee = bookclasees(:one)
  end

  test "visiting the index" do
    visit bookclasees_url
    assert_selector "h1", text: "Bookclasees"
  end

  test "creating a Bookclasee" do
    visit bookclasees_url
    click_on "New Bookclasee"

    fill_in "Classid", with: @bookclasee.classid
    fill_in "Classname", with: @bookclasee.classname
    click_on "Create Bookclasee"

    assert_text "Bookclasee was successfully created"
    click_on "Back"
  end

  test "updating a Bookclasee" do
    visit bookclasees_url
    click_on "Edit", match: :first

    fill_in "Classid", with: @bookclasee.classid
    fill_in "Classname", with: @bookclasee.classname
    click_on "Update Bookclasee"

    assert_text "Bookclasee was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookclasee" do
    visit bookclasees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookclasee was successfully destroyed"
  end
end
