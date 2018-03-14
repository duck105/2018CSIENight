class Department < ApplicationRecord
  has_many :users,  -> { order "priority ASC" }
  mount_uploader :image, EventImageUploader
end
