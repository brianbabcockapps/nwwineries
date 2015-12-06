class ChangeLatitudeLongitudeTypeInWinery < ActiveRecord::Migration
  def change
    remove_column :wineries, :longitude
    remove_column :wineries, :latitude
    add_column :wineries, :longitude, :float
    add_column :wineries, :latitude, :float
  end
end
