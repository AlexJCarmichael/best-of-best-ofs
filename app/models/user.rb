class User < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  has_many :lists, dependent: :destroy

  validates :username, presence: true
  validates :password, presence: true
end
