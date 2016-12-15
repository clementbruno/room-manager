class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_attachment :photo

  validates :name, presence: true, uniqueness: true
  validates :sits, presence: true
end
