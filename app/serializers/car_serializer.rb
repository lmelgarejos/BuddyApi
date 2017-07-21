class CarSerializer < ActiveModel::Serializer
  attributes :available_seats, :model, :driver_id 

  has_many :trips
  belongs_to :driver
end
