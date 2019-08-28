class UserPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  def needs_water?
  (Date.today - last_watered) >= self.plant.water_freq
  end
end
