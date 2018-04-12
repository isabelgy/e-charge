json.stations do
  json.array! @stations do |station|
    json.extract! station, :id, :latitude, :longitude, :photo, :availability, :address
  end
end
