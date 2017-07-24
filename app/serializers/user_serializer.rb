class UserSerializer < ActiveModel::Serializer
  attributes :id, :login, :name

  has_many :passengers
  has_many :drivers
end
