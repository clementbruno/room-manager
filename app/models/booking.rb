class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :start_time, presence: true
  validates :end_time, presence: true

  validates :room_id, :uniqueness => {:scope => [:start_time, :end_time]}
end
