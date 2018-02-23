class Event < ApplicationRecord
  mount_uploader :image, EventImageUploader
  has_and_belongs_to_many :users
end
