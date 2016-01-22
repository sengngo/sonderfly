class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :role
  has_one :profile_image

  has_many :posts, dependent: :destroy
  has_many :post_photos
  has_many :cover_photos
  has_many :comments
  has_many :bookmarks

  mount_uploader :profile_photo, ProfilePhotoUploader

  def full_name
	  "#{first_name} #{last_name}"
	end

end
