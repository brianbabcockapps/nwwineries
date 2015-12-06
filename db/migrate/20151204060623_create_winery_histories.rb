class CreateWineryHistories < ActiveRecord::Migration
  def change
    create_table :winery_histories do |t|
      t.integer :winery_id
      t.string :name
      t.integer :order
      t.string :price_range
      t.string :reigon
      t.string :tasting_room_hours
      t.string :seasonal
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :longitude
      t.string :latitude
      t.decimal :tasting_room_cost
      t.string :website

      t.timestamps null: false
    end
  end
end
