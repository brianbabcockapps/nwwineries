class AddActiveToWinery < ActiveRecord::Migration
  def change
    add_column :wineries, :active, :boolean
    add_column :wineries, :winery_serial_num, :integer
  end
end
