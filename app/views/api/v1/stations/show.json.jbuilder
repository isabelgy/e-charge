json.extract! @station, :id, :latitude, :longitude, :photo, :availability, :address
json.rentals @station.rentals do |rental|
  json.extract! rental, :id, :in_progress
  json.date rental.created_at.strftime("%b %e, %l:%M %p")
end

