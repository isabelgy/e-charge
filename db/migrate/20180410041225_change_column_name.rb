class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :stations, :location, :latitude
  end
end
