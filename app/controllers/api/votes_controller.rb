class Api::VotesController < ApplicationController
  def index
    render json: Vote.all
  end

  def show
    render json: get_votes
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def create
    votes = Vote.create!(votes_params)
    render json: votes
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  end

  def update
    votes = get_votes
    votes.update(votes_params)
    votes.save!
    render json: votes
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def destroy
    votes = get_votes
    votes.destroy
    render json: votes
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  private
    def get_votes
      Votes.find(params.fetch(:id))
    end

    def votes_params
      params.permit(:user_id, :list_id, :up_vote, :down_vote)
    end
end
