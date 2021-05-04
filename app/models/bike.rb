class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  geocoded_by :bike_address
  after_validation :geocode, if: :will_save_change_to_bike_address?

  validates :bike_name, :bike_description, :bike_address, :price, :availability, presence: true
end
