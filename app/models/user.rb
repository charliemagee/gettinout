class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :image, :image_cache, :username, :phone_number, :superadmin
  
  # attr_accessible :title, :body

  mount_uploader :image, ImageUploader
  
  has_many :plans
  has_many :events, :through => :plans
end
