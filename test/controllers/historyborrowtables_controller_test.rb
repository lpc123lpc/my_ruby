require 'test_helper'

class HistoryborrowtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historyborrowtable = historyborrowtables(:one)
  end

  test "should get index" do
    get historyborrowtables_url
    assert_response :success
  end

  test "should get new" do
    get new_historyborrowtable_url
    assert_response :success
  end

  test "should create historyborrowtable" do
    assert_difference('Historyborrowtable.count') do
      post historyborrowtables_url, params: { historyborrowtable: { bookid: @historyborrowtable.bookid, bookname: @historyborrowtable.bookname, borrowdate: @historyborrowtable.borrowdate, borrowerid: @historyborrowtable.borrowerid, returndate: @historyborrowtable.returndate } }
    end

    assert_redirected_to historyborrowtable_url(Historyborrowtable.last)
  end

  test "should show historyborrowtable" do
    get historyborrowtable_url(@historyborrowtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_historyborrowtable_url(@historyborrowtable)
    assert_response :success
  end

  test "should update historyborrowtable" do
    patch historyborrowtable_url(@historyborrowtable), params: { historyborrowtable: { bookid: @historyborrowtable.bookid, bookname: @historyborrowtable.bookname, borrowdate: @historyborrowtable.borrowdate, borrowerid: @historyborrowtable.borrowerid, returndate: @historyborrowtable.returndate } }
    assert_redirected_to historyborrowtable_url(@historyborrowtable)
  end

  test "should destroy historyborrowtable" do
    assert_difference('Historyborrowtable.count', -1) do
      delete historyborrowtable_url(@historyborrowtable)
    end

    assert_redirected_to historyborrowtables_url
  end
end
