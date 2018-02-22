class Banner < ApplicationRecord
  mount_uploader :image, BannerImageUploader
end
