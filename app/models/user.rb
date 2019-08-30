class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_plants

  def user_level
    self.level = 5 if self.seeds > 1500
    self.level = 4 if self.seeds <= 1500
    self.level = 3 if self.seeds <= 1000
    self.level = 2 if self.seeds <= 600
    self.level = 1 if self.seeds <= 300
    self.level = 0 if self.seeds <= 100
    self.save
  end

  def earn_seeds(points)
    self.seeds += points
    user_level
  end
end
