class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :list

  validates :user_id, presence: true
  validates :list_id, presence: true
  validates :up_vote, presence: true
  validates :down_vote, presence: true
  validates :aggregate_vote, presence: true
end
