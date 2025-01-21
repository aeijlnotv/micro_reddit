class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 3..15 }
  validates :password, length: { in: 8..30 }

  has_many :posts
  has_one :profile
end
