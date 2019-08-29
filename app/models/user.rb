class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_plants

  # def user_level(number_of_seeds)
  #   if number_of_seeds >= 100
  #     self.level = 1
  #   elsif number_of_seeds >= 300
  #     self.level = 2
  #   elsif number_of_seeds >= 600
  #     self.level = 3
  #   elsif number_of_seeds >= 1000
  #     self.level = 4
  #   elsif number_of_seeds >= 1500
  #     self.level = 5
  #   else
  #     self.level = 0
  #   end
  #   level.save
  # end

  # def addseeds
  #   seeds_earned += number_of_seeds
  # end
end
