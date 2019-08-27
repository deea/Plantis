class Plant < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
