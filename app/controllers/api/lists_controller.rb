class Api::ListsController < ApplicationController
  def index
    if params[:specific]
      @list = List.select("lists.*, SUM(votes.up_vote - votes.down_vote) as aggregate_votes, SUM(votes.up_vote) as up_votes, SUM(votes.down_vote) as down_votes")
                   .joins(:votes)
                   .group("lists.id")
                   .order("aggregate_votes")
                   .page(params[:page])
      render json: @list.to_json(include: :items)
    elsif params[:specific] == "newest"
      @list = List.order("created_at DESC").page(params[:page])
      render json: @list.to_json(include: :items)
    else
      @list = List.select("lists.*, SUM(votes.up_vote - votes.down_vote) as aggregate_votes, SUM(votes.up_vote) as up_votes, SUM(votes.down_vote) as down_votes")
                   .joins(:votes)
                   .group("lists.id")
                   .order("aggregate_votes DESC")
                   .page(params[:page])
      render json: @list.to_json(include: :items)
    end
  end

  def show
    render json: get_list.to_json(include: :items)
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def create
    list = List.create!(list_params)
    items = Item.new(item_params)
    items.list_id = list.id
    items.save!
    render json: list
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  end

  def update
    list = get_list
    list.update(list_params)
    list.save!
    render json: list
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def destroy
    list = get_list
    list.destroy
    render json: list
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  private
    def get_list
      List.find(params.fetch(:id))
    end

    def list_params
      params.permit(:list_title, :image_ref, :source_ref, :list_desc, :user_id, :list_type)
    end

    def item_params
      params.require(:item).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten)
    end
end
