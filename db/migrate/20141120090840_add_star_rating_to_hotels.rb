class AddStarRatingToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :star_rating, :integer
  end
end
