class Event < ActiveRecord::Base
  attr_accessible :date, :activity, :activity_id

  belongs_to :activity
  has_one :creator, :class_name => "User"
  has_many :plans
  has_many :companions, :through => :plans, :class_name => "User"
end
