require 'test_helper'

class FelicitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @felicity = felicities(:one)
  end

  test "should get index" do
    get felicities_url
    assert_response :success
  end

  test "should get new" do
    get new_felicity_url
    assert_response :success
  end

  test "should create felicity" do
    assert_difference('Felicity.count') do
      post felicities_url, params: { felicity: { activity: @felicity.activity, name: @felicity.name } }
    end

    assert_redirected_to felicity_url(Felicity.last)
  end

  test "should show felicity" do
    get felicity_url(@felicity)
    assert_response :success
  end

  test "should get edit" do
    get edit_felicity_url(@felicity)
    assert_response :success
  end

  test "should update felicity" do
    patch felicity_url(@felicity), params: { felicity: { activity: @felicity.activity, name: @felicity.name } }
    assert_redirected_to felicity_url(@felicity)
  end

  test "should destroy felicity" do
    assert_difference('Felicity.count', -1) do
      delete felicity_url(@felicity)
    end

    assert_redirected_to felicities_url
  end
end
