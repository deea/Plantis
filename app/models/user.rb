class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_plants
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following
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
  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end
end
