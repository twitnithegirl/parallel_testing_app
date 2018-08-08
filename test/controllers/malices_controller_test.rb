require 'test_helper'

class MalicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @malice = malices(:one)
  end

  test "should get index" do
    get malices_url
    assert_response :success
  end

  test "should get new" do
    get new_malice_url
    assert_response :success
  end

  test "should create malice" do
    assert_difference('Malice.count') do
      post malices_url, params: { malice: { activity: @malice.activity, name: @malice.name } }
    end

    assert_redirected_to malice_url(Malice.last)
  end

  test "should show malice" do
    get malice_url(@malice)
    assert_response :success
  end

  test "should get edit" do
    get edit_malice_url(@malice)
    assert_response :success
  end

  test "should update malice" do
    patch malice_url(@malice), params: { malice: { activity: @malice.activity, name: @malice.name } }
    assert_redirected_to malice_url(@malice)
  end

  test "should destroy malice" do
    assert_difference('Malice.count', -1) do
      delete malice_url(@malice)
    end

    assert_redirected_to malices_url
  end
end
