class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :location
      t.string :photo
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end
