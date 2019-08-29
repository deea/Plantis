class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_plants


  # def user_level(seeds)
  #   if seeds < 100
  #     user_level = 0
  #   elsif seeds < 300
  #     # user_level = 1
  #     self.lvl = 1
  #   elsif seeds < 600
  #     user_level = 2
  #   elsif seeds < 1000
  #     user_level = 3
  #   elsif seeds < 1500
  #     user_level = 4
  #   else
  #     user_level = 5
  #   end
  #   self.save
  # end


end
