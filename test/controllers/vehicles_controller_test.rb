require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { actual_mileage: @vehicle.actual_mileage, chassis_number: @vehicle.chassis_number, cost: @vehicle.cost, engine_number: @vehicle.engine_number, fabricator: @vehicle.fabricator, fire_station_id: @vehicle.fire_station_id, fuel_consumed: @vehicle.fuel_consumed, fuel_tank_capacity: @vehicle.fuel_tank_capacity, kilometers_run: @vehicle.kilometers_run, make: @vehicle.make, mfg_year: @vehicle.mfg_year, model: @vehicle.model, proposed_mileage: @vehicle.proposed_mileage, purchase_date: @vehicle.purchase_date, registration_number: @vehicle.registration_number, sanction_date: @vehicle.sanction_date, sanction_order_no: @vehicle.sanction_order_no, tax_card: @vehicle.tax_card, type: @vehicle.type } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { actual_mileage: @vehicle.actual_mileage, chassis_number: @vehicle.chassis_number, cost: @vehicle.cost, engine_number: @vehicle.engine_number, fabricator: @vehicle.fabricator, fire_station_id: @vehicle.fire_station_id, fuel_consumed: @vehicle.fuel_consumed, fuel_tank_capacity: @vehicle.fuel_tank_capacity, kilometers_run: @vehicle.kilometers_run, make: @vehicle.make, mfg_year: @vehicle.mfg_year, model: @vehicle.model, proposed_mileage: @vehicle.proposed_mileage, purchase_date: @vehicle.purchase_date, registration_number: @vehicle.registration_number, sanction_date: @vehicle.sanction_date, sanction_order_no: @vehicle.sanction_order_no, tax_card: @vehicle.tax_card, type: @vehicle.type } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
