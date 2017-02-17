class CreateFireStations < ActiveRecord::Migration[5.0]
  def change
    create_table :fire_stations do |t|
      t.string :name
      t.string :sanction_number
      t.string :address
      t.decimal :longitude
      t.decimal :latitude
      t.integer :phone_number
      t.decimal :land_area
      t.string :fs_class
      t.date :establishment_date
      t.decimal :establishment_cost
      t.integer :sanctioned_strength
      t.integer :actual_strength
      t.bit :taluk_bit
      t.string :status

      t.timestamps
    end
  end
end
