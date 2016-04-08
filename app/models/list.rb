class List < ActiveRecord::Base
  belongs_to :user
  has_many :votes, dependent: :destroy
  has_many :items, dependent: :destroy

  validates :image_ref, presence: true
  validates :source_ref, presence: true
  validates :list_desc, presence: true
  validates :list_title, presence: true
  validates :user_id, presence: true
end
