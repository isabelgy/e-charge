json.extract! @station, :id, :location, :photo, :availability
json.rentails @station.rentals do |rental|
  json.extract! rental, :id, :in_progress
  json.date rental.created_at.strftime("%b %e, %l:%M %p")
end
