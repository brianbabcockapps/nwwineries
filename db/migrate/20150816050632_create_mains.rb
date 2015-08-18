class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :title
      t.text :paragraph
      t.string :graphic

      t.timestamps null: false
    end
  end
end
