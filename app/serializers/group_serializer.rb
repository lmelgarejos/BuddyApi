class GroupSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :passenger_id
  # has_many :trips
  # has_many :passengers
  belongs_to :trips, optional: true
  belongs_to :passengers, optional: true
end
