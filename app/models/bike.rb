class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :bike_name, :bike_description, :bike_address, :price, :availability, presence: true
  has_one_attached :photo
end
