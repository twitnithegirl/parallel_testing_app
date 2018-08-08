require 'test_helper'

class RagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rage = rages(:one)
  end

  test "should get index" do
    get rages_url
    assert_response :success
  end

  test "should get new" do
    get new_rage_url
    assert_response :success
  end

  test "should create rage" do
    assert_difference('Rage.count') do
      post rages_url, params: { rage: { activity: @rage.activity, name: @rage.name } }
    end

    assert_redirected_to rage_url(Rage.last)
  end

  test "should show rage" do
    get rage_url(@rage)
    assert_response :success
  end

  test "should get edit" do
    get edit_rage_url(@rage)
    assert_response :success
  end

  test "should update rage" do
    patch rage_url(@rage), params: { rage: { activity: @rage.activity, name: @rage.name } }
    assert_redirected_to rage_url(@rage)
  end

  test "should destroy rage" do
    assert_difference('Rage.count', -1) do
      delete rage_url(@rage)
    end

    assert_redirected_to rages_url
  end
end
