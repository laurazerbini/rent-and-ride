class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :bike_name, :bike_description, :bike_address, :price, :availability, presence: true
end
