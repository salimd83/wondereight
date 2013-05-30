class AddAttachmentPhotoOverToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :photo_over
    end
  end

  def self.down
    drop_attached_file :works, :photo_over
  end
end
