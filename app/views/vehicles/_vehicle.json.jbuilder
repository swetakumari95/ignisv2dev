json.extract! vehicle, :id, :registration_number, :make, :model, :mfg_year, :cost, :purchase_date, :chassis_number, :engine_number, :fuel_tank_capacity, :fabricator, :type, :tax_card, :sanction_order_no, :sanction_date, :actual_mileage, :proposed_mileage, :kilometers_run, :fuel_consumed, :fire_station_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)