class Event < ApplicationRecord
  mount_uploader :image, EventImageUploader
  has_and_belongs_to_many :users
  scope :all_except, ->(exception) { where.not(id: exception) }
end
