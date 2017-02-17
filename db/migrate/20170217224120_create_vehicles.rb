class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :registration_number
      t.string :make
      t.string :model
      t.integer :mfg_year
      t.decimal :cost
      t.date :purchase_date
      t.string :chassis_number
      t.string :engine_number
      t.decimal :fuel_tank_capacity
      t.string :fabricator
      t.string :type
      t.string :tax_card
      t.string :sanction_order_no
      t.date :sanction_date
      t.decimal :actual_mileage
      t.decimal :proposed_mileage
      t.decimal :kilometers_run
      t.decimal :fuel_consumed
      t.references :fire_station, foreign_key: true

      t.timestamps
    end
  end
end
