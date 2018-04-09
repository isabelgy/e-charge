class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.boolean :in_progress, default: true
      t.references :station, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
