class Activity < ActiveRecord::Base
  attr_accessible :location, :title, :image, :image_cache

  mount_uploader :image, ImageUploader

  has_many :events
end
