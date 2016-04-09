class RemoveAggregateVoteFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :aggregate_vote, :integer
  end
end
