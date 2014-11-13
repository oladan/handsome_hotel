class AddUserRefToHotel < ActiveRecord::Migration
  def change
    add_reference :hotels, :user, index: true
  end
end
