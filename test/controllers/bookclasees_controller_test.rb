require 'test_helper'

class BookclaseesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookclasee = bookclasees(:one)
  end

  test "should get index" do
    get bookclasees_url
    assert_response :success
  end

  test "should get new" do
    get new_bookclasee_url
    assert_response :success
  end

  test "should create bookclasee" do
    assert_difference('Bookclasee.count') do
      post bookclasees_url, params: { bookclasee: { classid: @bookclasee.classid, classname: @bookclasee.classname } }
    end

    assert_redirected_to bookclasee_url(Bookclasee.last)
  end

  test "should show bookclasee" do
    get bookclasee_url(@bookclasee)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookclasee_url(@bookclasee)
    assert_response :success
  end

  test "should update bookclasee" do
    patch bookclasee_url(@bookclasee), params: { bookclasee: { classid: @bookclasee.classid, classname: @bookclasee.classname } }
    assert_redirected_to bookclasee_url(@bookclasee)
  end

  test "should destroy bookclasee" do
    assert_difference('Bookclasee.count', -1) do
      delete bookclasee_url(@bookclasee)
    end

    assert_redirected_to bookclasees_url
  end
end
