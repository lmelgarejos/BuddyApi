driver_data = JSON.parse(File.read('db/seeds/drivers.json'))
driver_data.each do |driver|
  Driver.create!(driver)
end

# JSON.parse(File.read('db/seeds/groups.json')).each do |group|
#   Group.create!(group)
# end

passenger_data = JSON.parse(File.read('db/seeds/passengers.json'))
passenger_data.each do |passenger|
  Passenger.create!(passenger)
end

JSON.parse(File.read('db/seeds/cars.json')).each do |car|
  Car.create!(car)
end

JSON.parse(File.read('db/seeds/trips.json')).each do |trip|
  Trip.create!(trip)
end
