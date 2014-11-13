class AddHotelRefToLocations < ActiveRecord::Migration
  def change
    add_reference :locations, :hotel, index: true
  end
end
