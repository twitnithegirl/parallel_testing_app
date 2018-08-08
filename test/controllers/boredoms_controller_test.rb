require 'test_helper'

class BoredomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boredom = boredoms(:one)
  end

  test "should get index" do
    get boredoms_url
    assert_response :success
  end

  test "should get new" do
    get new_boredom_url
    assert_response :success
  end

  test "should create boredom" do
    assert_difference('Boredom.count') do
      post boredoms_url, params: { boredom: { activity: @boredom.activity, name: @boredom.name } }
    end

    assert_redirected_to boredom_url(Boredom.last)
  end

  test "should show boredom" do
    get boredom_url(@boredom)
    assert_response :success
  end

  test "should get edit" do
    get edit_boredom_url(@boredom)
    assert_response :success
  end

  test "should update boredom" do
    patch boredom_url(@boredom), params: { boredom: { activity: @boredom.activity, name: @boredom.name } }
    assert_redirected_to boredom_url(@boredom)
  end

  test "should destroy boredom" do
    assert_difference('Boredom.count', -1) do
      delete boredom_url(@boredom)
    end

    assert_redirected_to boredoms_url
  end
end
