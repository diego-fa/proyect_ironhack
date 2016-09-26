class AddLatitudeLongitude < ActiveRecord::Migration[5.0]
  def change
  	add_column :estates, :latitude, :float
  	add_column :estates, :longitude, :float
  end
end
