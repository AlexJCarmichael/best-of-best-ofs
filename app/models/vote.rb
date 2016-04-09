class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :list

  validates :user_id, presence: true
  validates :list_id, presence: true
  validates :up_vote, numericality: {
    only_integer: true
  }
  validates :down_vote, numericality: {
    only_integer: true
  }
end
