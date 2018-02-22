class Department < ApplicationRecord
  has_many :users
  mount_uploader :image, EventImageUploader
end
