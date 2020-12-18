require 'test_helper'

class PressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @press = presses(:one)
  end

  test "should get index" do
    get presses_url
    assert_response :success
  end

  test "should get new" do
    get new_press_url
    assert_response :success
  end

  test "should create press" do
    assert_difference('Press.count') do
      post presses_url, params: { press: { pressdate: @press.pressdate, pressid: @press.pressid, pressname: @press.pressname } }
    end

    assert_redirected_to press_url(Press.last)
  end

  test "should show press" do
    get press_url(@press)
    assert_response :success
  end

  test "should get edit" do
    get edit_press_url(@press)
    assert_response :success
  end

  test "should update press" do
    patch press_url(@press), params: { press: { pressdate: @press.pressdate, pressid: @press.pressid, pressname: @press.pressname } }
    assert_redirected_to press_url(@press)
  end

  test "should destroy press" do
    assert_difference('Press.count', -1) do
      delete press_url(@press)
    end

    assert_redirected_to presses_url
  end
end
