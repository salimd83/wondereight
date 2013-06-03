class AddAttachmentPhotoToWorkgalleries < ActiveRecord::Migration
  def self.up
    change_table :workgalleries do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :workgalleries, :photo
  end
end
