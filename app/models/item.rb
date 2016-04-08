class Item < ActiveRecord::Base
  belongs_to :list

  validates :one, presence: true
  validates :two, presence: true
  validates :three, presence: true
  validates :four, presence: true
  validates :five, presence: true
  validates :six, presence: true
  validates :seven, presence: true
  validates :eight, presence: true
  validates :nine, presence: true
  validates :ten, presence: true
end
