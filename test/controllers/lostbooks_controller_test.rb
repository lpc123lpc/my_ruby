require 'test_helper'

class LostbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lostbook = lostbooks(:one)
  end

  test "should get index" do
    get lostbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_lostbook_url
    assert_response :success
  end

  test "should create lostbook" do
    assert_difference('Lostbook.count') do
      post lostbooks_url, params: { lostbook: { author: @lostbook.author, bookid: @lostbook.bookid, booktitle: @lostbook.booktitle, press: @lostbook.press, price: @lostbook.price } }
    end

    assert_redirected_to lostbook_url(Lostbook.last)
  end

  test "should show lostbook" do
    get lostbook_url(@lostbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_lostbook_url(@lostbook)
    assert_response :success
  end

  test "should update lostbook" do
    patch lostbook_url(@lostbook), params: { lostbook: { author: @lostbook.author, bookid: @lostbook.bookid, booktitle: @lostbook.booktitle, press: @lostbook.press, price: @lostbook.price } }
    assert_redirected_to lostbook_url(@lostbook)
  end

  test "should destroy lostbook" do
    assert_difference('Lostbook.count', -1) do
      delete lostbook_url(@lostbook)
    end

    assert_redirected_to lostbooks_url
  end
end
