require 'test_helper'

class FunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fun = funs(:one)
  end

  test "should get index" do
    get funs_url
    assert_response :success
  end

  test "should get new" do
    get new_fun_url
    assert_response :success
  end

  test "should create fun" do
    assert_difference('Fun.count') do
      post funs_url, params: { fun: { activity: @fun.activity, name: @fun.name } }
    end

    assert_redirected_to fun_url(Fun.last)
  end

  test "should show fun" do
    get fun_url(@fun)
    assert_response :success
  end

  test "should get edit" do
    get edit_fun_url(@fun)
    assert_response :success
  end

  test "should update fun" do
    patch fun_url(@fun), params: { fun: { activity: @fun.activity, name: @fun.name } }
    assert_redirected_to fun_url(@fun)
  end

  test "should destroy fun" do
    assert_difference('Fun.count', -1) do
      delete fun_url(@fun)
    end

    assert_redirected_to funs_url
  end
end
