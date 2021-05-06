class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :booking_date, :end_date, :booking_message, presence: true
end
