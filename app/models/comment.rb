class Comment < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user
  validates :body, presence: true, length: { minimum: 15 }
end
