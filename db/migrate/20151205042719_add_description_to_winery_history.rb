class AddDescriptionToWineryHistory < ActiveRecord::Migration
  def change
    add_column :winery_histories, :description, :text
  end
end
