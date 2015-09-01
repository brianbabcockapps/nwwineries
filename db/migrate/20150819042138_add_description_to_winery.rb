class AddDescriptionToWinery < ActiveRecord::Migration
  def change
    add_column :wineries, :description, :text
  end
end
