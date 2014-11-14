class Hotel < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 5 }
  mount_uploader :photo, PhotoUploader
end
