require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Credit", with: @student.credit
    fill_in "Department", with: @student.department
    fill_in "Gender", with: @student.gender
    fill_in "Id", with: @student.id
    fill_in "Name", with: @student.name
    fill_in "Registration", with: @student.registration
    fill_in "Validity", with: @student.validity
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Credit", with: @student.credit
    fill_in "Department", with: @student.department
    fill_in "Gender", with: @student.gender
    fill_in "Id", with: @student.id
    fill_in "Name", with: @student.name
    fill_in "Registration", with: @student.registration
    fill_in "Validity", with: @student.validity
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
