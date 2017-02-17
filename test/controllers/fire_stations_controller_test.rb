require 'test_helper'

class FireStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fire_station = fire_stations(:one)
  end

  test "should get index" do
    get fire_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_fire_station_url
    assert_response :success
  end

  test "should create fire_station" do
    assert_difference('FireStation.count') do
      post fire_stations_url, params: { fire_station: { actual_strength: @fire_station.actual_strength, address: @fire_station.address, establishment_cost: @fire_station.establishment_cost, establishment_date: @fire_station.establishment_date, fs_class: @fire_station.fs_class, land_area: @fire_station.land_area, latitude: @fire_station.latitude, longitude: @fire_station.longitude, name: @fire_station.name, phone_number: @fire_station.phone_number, sanction_number: @fire_station.sanction_number, sanctioned_strength: @fire_station.sanctioned_strength, status: @fire_station.status, taluk_bit: @fire_station.taluk_bit } }
    end

    assert_redirected_to fire_station_url(FireStation.last)
  end

  test "should show fire_station" do
    get fire_station_url(@fire_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_fire_station_url(@fire_station)
    assert_response :success
  end

  test "should update fire_station" do
    patch fire_station_url(@fire_station), params: { fire_station: { actual_strength: @fire_station.actual_strength, address: @fire_station.address, establishment_cost: @fire_station.establishment_cost, establishment_date: @fire_station.establishment_date, fs_class: @fire_station.fs_class, land_area: @fire_station.land_area, latitude: @fire_station.latitude, longitude: @fire_station.longitude, name: @fire_station.name, phone_number: @fire_station.phone_number, sanction_number: @fire_station.sanction_number, sanctioned_strength: @fire_station.sanctioned_strength, status: @fire_station.status, taluk_bit: @fire_station.taluk_bit } }
    assert_redirected_to fire_station_url(@fire_station)
  end

  test "should destroy fire_station" do
    assert_difference('FireStation.count', -1) do
      delete fire_station_url(@fire_station)
    end

    assert_redirected_to fire_stations_url
  end
end
