class AddPhotoToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :photo, :string
  end
end
