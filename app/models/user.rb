class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_plants
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower
  before_save :user_level
  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following
  acts_as_voter

  def follow(user_id)
    follow = following_relationships.find_by(following_id: user_id)
    if follow.present?
      follow.update(active: true)
    else
      following_relationships.create(following_id: user_id)
    end
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).update(active: false)
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship&.active
  end

  def user_level
    self.level = 5 if self.seeds >= 1500
    self.level = 4 if self.seeds < 1500
    self.level = 3 if self.seeds < 1000
    self.level = 2 if self.seeds < 600
    self.level = 1 if self.seeds < 300
    self.level = 0 if self.seeds < 100
  end

  def earn_seeds(points)
    self.seeds += points
    user_level
  end
end
