require 'test_helper'

class JoysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joy = joys(:one)
  end

  test "should get index" do
    get joys_url
    assert_response :success
  end

  test "should get new" do
    get new_joy_url
    assert_response :success
  end

  test "should create joy" do
    assert_difference('Joy.count') do
      post joys_url, params: { joy: { activity: @joy.activity, name: @joy.name } }
    end

    assert_redirected_to joy_url(Joy.last)
  end

  test "should show joy" do
    get joy_url(@joy)
    assert_response :success
  end

  test "should get edit" do
    get edit_joy_url(@joy)
    assert_response :success
  end

  test "should update joy" do
    patch joy_url(@joy), params: { joy: { activity: @joy.activity, name: @joy.name } }
    assert_redirected_to joy_url(@joy)
  end

  test "should destroy joy" do
    assert_difference('Joy.count', -1) do
      delete joy_url(@joy)
    end

    assert_redirected_to joys_url
  end
end
