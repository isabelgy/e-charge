class AddLongitudeToStations < ActiveRecord::Migration[5.1]
  def change
    add_column :stations, :longitude, :string
  end
end
