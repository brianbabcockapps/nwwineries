class AddAttachmentGraphicToMains < ActiveRecord::Migration
  def self.up
    change_table :mains do |t|
      t.attachment :graphic
    end
  end

  def self.down
    remove_attachment :mains, :graphic
  end
end
