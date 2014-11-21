class Hotel < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 5 }
  validates :star_rating, presence: true
  mount_uploader :photo, PhotoUploader
  has_one :location, :dependent => :destroy
  accepts_nested_attributes_for :location
  ratyrate_rateable "hotel_user_rate"
end
