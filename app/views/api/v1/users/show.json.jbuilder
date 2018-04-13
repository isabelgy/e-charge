json.extract! @user, :id
json.rentals @user.rentals do |rental|
  json.extract! rental, :id, :in_progress
  json.start rental.created_at.strftime("%b %e, %l:%M %p")
  json.end rental.updated_at.strftime("%b %e, %l:%M %p")
  json.duration (rental.updated_at - rental.created_at).to_i
  json.extract! rental.station, :id, :latitude, :longitude
end
