class UserPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
