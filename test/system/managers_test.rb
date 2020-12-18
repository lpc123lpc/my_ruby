require "application_system_test_case"

class ManagersTest < ApplicationSystemTestCase
  setup do
    @manager = managers(:one)
  end

  test "visiting the index" do
    visit managers_url
    assert_selector "h1", text: "Managers"
  end

  test "creating a Manager" do
    visit managers_url
    click_on "New Manager"

    fill_in "Email", with: @manager.email
    fill_in "Gender", with: @manager.gender
    fill_in "Id", with: @manager.id
    fill_in "Intime", with: @manager.intime
    fill_in "Name", with: @manager.name
    fill_in "Phone", with: @manager.phone
    fill_in "Weixin", with: @manager.weixin
    click_on "Create Manager"

    assert_text "Manager was successfully created"
    click_on "Back"
  end

  test "updating a Manager" do
    visit managers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @manager.email
    fill_in "Gender", with: @manager.gender
    fill_in "Id", with: @manager.id
    fill_in "Intime", with: @manager.intime
    fill_in "Name", with: @manager.name
    fill_in "Phone", with: @manager.phone
    fill_in "Weixin", with: @manager.weixin
    click_on "Update Manager"

    assert_text "Manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Manager" do
    visit managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manager was successfully destroyed"
  end
end
