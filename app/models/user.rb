class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :validatable, :registerable, :rememberable

  mount_uploader :avatar, AvatarUploader
  belongs_to :department,  optional: true

  def is_admin?
    self.role == "admin"
  end
end
