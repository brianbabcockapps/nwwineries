class AddWebsiteToWinery < ActiveRecord::Migration
  def change
    add_column :wineries, :website, :string
  end
end
