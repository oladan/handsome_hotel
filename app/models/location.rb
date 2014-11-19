class Location < ActiveRecord::Base
  belongs_to :hotel
  geocoded_by :address
  after_validation :geocode
end
