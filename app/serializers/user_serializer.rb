class UserSerializer < ActiveModel::Serializer
  attributes :id, :login, :username
  
  has_many :passengers
  has_many :drivers
end
