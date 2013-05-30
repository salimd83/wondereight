class AddAttachmentPhotoMainToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :photo_main
    end
  end

  def self.down
    drop_attached_file :works, :photo_main
  end
end
