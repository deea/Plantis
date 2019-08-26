class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_type
  mount_uploader :photo, PhotoUploader
end
