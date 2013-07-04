class Workgallery < ActiveRecord::Base
  attr_accessible :photo, :title, :work_id

  belongs_to :work

  has_attached_file :photo, :styles => { :default => "3000x3000>" }
  attr_accessor :delete_asset

  before_validation { self.asset.clear if self.delete_asset == '1' }

  validates_attachment_content_type :photo, :content_type => /image/
end
