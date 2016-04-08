class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :up_vote
      t.integer :down_vote
      t.integer :aggregate_vote
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
