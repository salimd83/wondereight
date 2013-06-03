class Work < ActiveRecord::Base
  attr_accessible :caption, :category, :client, :created, :description, :region, :task, :title, :photo, :photo_over, :photo_main

  has_many :workgalleries

  has_attached_file :photo, :styles => { :default => "800x488>" }
  has_attached_file :photo_over, :styles => { :default => "800x488>" }
  has_attached_file :photo_main, :styles => { :default => "1582x872>" }
  attr_accessor :delete_asset

  before_validation { self.asset.clear if self.delete_asset == '1' }

  validates_attachment_content_type :photo, :photo_over, :photo_main, :content_type => /image/


end
