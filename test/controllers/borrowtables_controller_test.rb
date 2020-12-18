require 'test_helper'

class BorrowtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrowtable = borrowtables(:one)
  end

  test "should get index" do
    get borrowtables_url
    assert_response :success
  end

  test "should get new" do
    get new_borrowtable_url
    assert_response :success
  end

  test "should create borrowtable" do
    assert_difference('Borrowtable.count') do
      post borrowtables_url, params: { borrowtable: { bookid: @borrowtable.bookid, bookname: @borrowtable.bookname, borrowdate: @borrowtable.borrowdate, borrowerid: @borrowtable.borrowerid, returndate: @borrowtable.returndate } }
    end

    assert_redirected_to borrowtable_url(Borrowtable.last)
  end

  test "should show borrowtable" do
    get borrowtable_url(@borrowtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrowtable_url(@borrowtable)
    assert_response :success
  end

  test "should update borrowtable" do
    patch borrowtable_url(@borrowtable), params: { borrowtable: { bookid: @borrowtable.bookid, bookname: @borrowtable.bookname, borrowdate: @borrowtable.borrowdate, borrowerid: @borrowtable.borrowerid, returndate: @borrowtable.returndate } }
    assert_redirected_to borrowtable_url(@borrowtable)
  end

  test "should destroy borrowtable" do
    assert_difference('Borrowtable.count', -1) do
      delete borrowtable_url(@borrowtable)
    end

    assert_redirected_to borrowtables_url
  end
end
