class AddWineryIdToWineryHistory < ActiveRecord::Migration
  def change
    add_column :winery_histories, :winery_id, :integer
  end
end
