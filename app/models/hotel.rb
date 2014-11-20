class Hotel < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 5 }
  mount_uploader :photo, PhotoUploader
  has_one :location, :dependent => :destroy
  accepts_nested_attributes_for :location
end
