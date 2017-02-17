require 'test_helper'

class RrangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rrange = rranges(:one)
  end

  test "should get index" do
    get rranges_url
    assert_response :success
  end

  test "should get new" do
    get new_rrange_url
    assert_response :success
  end

  test "should create rrange" do
    assert_difference('Rrange.count') do
      post rranges_url, params: { rrange: { name: @rrange.name, zone_id: @rrange.zone_id } }
    end

    assert_redirected_to rrange_url(Rrange.last)
  end

  test "should show rrange" do
    get rrange_url(@rrange)
    assert_response :success
  end

  test "should get edit" do
    get edit_rrange_url(@rrange)
    assert_response :success
  end

  test "should update rrange" do
    patch rrange_url(@rrange), params: { rrange: { name: @rrange.name, zone_id: @rrange.zone_id } }
    assert_redirected_to rrange_url(@rrange)
  end

  test "should destroy rrange" do
    assert_difference('Rrange.count', -1) do
      delete rrange_url(@rrange)
    end

    assert_redirected_to rranges_url
  end
end
