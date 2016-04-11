class List < ActiveRecord::Base
  belongs_to :user
  has_many :votes, dependent: :destroy
  has_many :items, dependent: :destroy

  validates :image_ref, presence: true
  validates :source_ref, presence: true
  validates :list_desc, presence: true
  validates :list_title, presence: true
  validates :list_type, presence: true
  validates :user_id, presence: true

  after_create :create_owner_vote

  def up_votes
    self.votes.where('up_vote > 0').count
  end

  def down_votes
    self.votes.where('down_vote > 0').count
  end

  def create_owner_vote
    Vote.create!(link_id: self.id, user_id: self.user_id, positive: 1, negative: 0)
  end

end
