class Car < ApplicationRecord
  belongs_to :driver
  has_many :trips





  # belongs_to :driver
  # belongs_to :trip

  # attr_accessor :external_id
  #
  # has_many :users, through: :trips
  # belongs_to :driver, :class_name => "user", :foreign_key => :user_id



  # has_many :trips

  # has_many :trips
  # has_many :drivers
  # has_many :users, through: :drivers



end
