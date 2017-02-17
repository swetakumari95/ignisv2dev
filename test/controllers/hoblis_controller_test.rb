require 'test_helper'

class HoblisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hobli = hoblis(:one)
  end

  test "should get index" do
    get hoblis_url
    assert_response :success
  end

  test "should get new" do
    get new_hobli_url
    assert_response :success
  end

  test "should create hobli" do
    assert_difference('Hobli.count') do
      post hoblis_url, params: { hobli: { name: @hobli.name, taluk_id: @hobli.taluk_id } }
    end

    assert_redirected_to hobli_url(Hobli.last)
  end

  test "should show hobli" do
    get hobli_url(@hobli)
    assert_response :success
  end

  test "should get edit" do
    get edit_hobli_url(@hobli)
    assert_response :success
  end

  test "should update hobli" do
    patch hobli_url(@hobli), params: { hobli: { name: @hobli.name, taluk_id: @hobli.taluk_id } }
    assert_redirected_to hobli_url(@hobli)
  end

  test "should destroy hobli" do
    assert_difference('Hobli.count', -1) do
      delete hobli_url(@hobli)
    end

    assert_redirected_to hoblis_url
  end
end
