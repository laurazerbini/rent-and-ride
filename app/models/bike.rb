class Bike < ApplicationRecord
  belongs_to :user
  validates :bike_name, :bike_description, :bike_address, :price, :availability, presence: true

end
