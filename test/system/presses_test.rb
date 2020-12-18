require "application_system_test_case"

class PressesTest < ApplicationSystemTestCase
  setup do
    @press = presses(:one)
  end

  test "visiting the index" do
    visit presses_url
    assert_selector "h1", text: "Presses"
  end

  test "creating a Press" do
    visit presses_url
    click_on "New Press"

    fill_in "Pressdate", with: @press.pressdate
    fill_in "Pressid", with: @press.pressid
    fill_in "Pressname", with: @press.pressname
    click_on "Create Press"

    assert_text "Press was successfully created"
    click_on "Back"
  end

  test "updating a Press" do
    visit presses_url
    click_on "Edit", match: :first

    fill_in "Pressdate", with: @press.pressdate
    fill_in "Pressid", with: @press.pressid
    fill_in "Pressname", with: @press.pressname
    click_on "Update Press"

    assert_text "Press was successfully updated"
    click_on "Back"
  end

  test "destroying a Press" do
    visit presses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Press was successfully destroyed"
  end
end
