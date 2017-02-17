require 'test_helper'

class TaluksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taluk = taluks(:one)
  end

  test "should get index" do
    get taluks_url
    assert_response :success
  end

  test "should get new" do
    get new_taluk_url
    assert_response :success
  end

  test "should create taluk" do
    assert_difference('Taluk.count') do
      post taluks_url, params: { taluk: { district_id: @taluk.district_id, name: @taluk.name } }
    end

    assert_redirected_to taluk_url(Taluk.last)
  end

  test "should show taluk" do
    get taluk_url(@taluk)
    assert_response :success
  end

  test "should get edit" do
    get edit_taluk_url(@taluk)
    assert_response :success
  end

  test "should update taluk" do
    patch taluk_url(@taluk), params: { taluk: { district_id: @taluk.district_id, name: @taluk.name } }
    assert_redirected_to taluk_url(@taluk)
  end

  test "should destroy taluk" do
    assert_difference('Taluk.count', -1) do
      delete taluk_url(@taluk)
    end

    assert_redirected_to taluks_url
  end
end
