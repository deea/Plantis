class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_plants

  # def addseeds(number_of_seeds)
  #   user.seed_balance += number_of_seeds
  #   user,seed_balance.save
  #       if number_of_seeds
  # end
end
