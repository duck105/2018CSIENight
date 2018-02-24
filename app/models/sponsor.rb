class Sponsor < ApplicationRecord
  mount_uploader :picture, SponsorImageUploader
end
