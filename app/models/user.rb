class User < ActiveRecord::Base
  has_many :votes
  has_many :lists

  validates :username, presence: true
  validates :password, presence: true
end
