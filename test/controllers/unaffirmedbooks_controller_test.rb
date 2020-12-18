require 'test_helper'

class UnaffirmedbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unaffirmedbook = unaffirmedbooks(:one)
  end

  test "should get index" do
    get unaffirmedbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_unaffirmedbook_url
    assert_response :success
  end

  test "should create unaffirmedbook" do
    assert_difference('Unaffirmedbook.count') do
      post unaffirmedbooks_url, params: { unaffirmedbook: { bookid: @unaffirmedbook.bookid, booktitle: @unaffirmedbook.booktitle, expected_return: @unaffirmedbook.expected_return, overdue: @unaffirmedbook.overdue, returndate: @unaffirmedbook.returndate } }
    end

    assert_redirected_to unaffirmedbook_url(Unaffirmedbook.last)
  end

  test "should show unaffirmedbook" do
    get unaffirmedbook_url(@unaffirmedbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_unaffirmedbook_url(@unaffirmedbook)
    assert_response :success
  end

  test "should update unaffirmedbook" do
    patch unaffirmedbook_url(@unaffirmedbook), params: { unaffirmedbook: { bookid: @unaffirmedbook.bookid, booktitle: @unaffirmedbook.booktitle, expected_return: @unaffirmedbook.expected_return, overdue: @unaffirmedbook.overdue, returndate: @unaffirmedbook.returndate } }
    assert_redirected_to unaffirmedbook_url(@unaffirmedbook)
  end

  test "should destroy unaffirmedbook" do
    assert_difference('Unaffirmedbook.count', -1) do
      delete unaffirmedbook_url(@unaffirmedbook)
    end

    assert_redirected_to unaffirmedbooks_url
  end
end
