json.stations do
  json.array! @stations do |station|
    json.extract! station, :location, :photo, :availability
  end
end
