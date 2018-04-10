json.stations do
  json.array! @stations do |station|
    json.extract! station, :id, :location, :photo, :availability
  end
end
