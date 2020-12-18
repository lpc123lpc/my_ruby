require 'test_helper'

class DamagebooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @damagebook = damagebooks(:one)
  end

  test "should get index" do
    get damagebooks_url
    assert_response :success
  end

  test "should get new" do
    get new_damagebook_url
    assert_response :success
  end

  test "should create damagebook" do
    assert_difference('Damagebook.count') do
      post damagebooks_url, params: { damagebook: { bookid: @damagebook.bookid, bookname: @damagebook.bookname, date: @damagebook.date, level: @damagebook.level } }
    end

    assert_redirected_to damagebook_url(Damagebook.last)
  end

  test "should show damagebook" do
    get damagebook_url(@damagebook)
    assert_response :success
  end

  test "should get edit" do
    get edit_damagebook_url(@damagebook)
    assert_response :success
  end

  test "should update damagebook" do
    patch damagebook_url(@damagebook), params: { damagebook: { bookid: @damagebook.bookid, bookname: @damagebook.bookname, date: @damagebook.date, level: @damagebook.level } }
    assert_redirected_to damagebook_url(@damagebook)
  end

  test "should destroy damagebook" do
    assert_difference('Damagebook.count', -1) do
      delete damagebook_url(@damagebook)
    end

    assert_redirected_to damagebooks_url
  end
end
