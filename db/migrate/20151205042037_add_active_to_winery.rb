class AddActiveToWinery < ActiveRecord::Migration
  def change
    add_column :wineries, :active, :boolean
  end
end
