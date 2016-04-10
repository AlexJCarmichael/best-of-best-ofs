class Api::ListsController < ApplicationController
  def index
    @list = List.select("lists.*, SUM(votes.up_vote - votes.down_vote) as aggregate_votes")
                 .joins(:votes)
                 .group("lists.id")
                 .order("aggregate_votes DESC")
                 .page(params[:page])
    render json: @list
  end

  def show
    render json: get_list.to_json(include: :items, include: :up_votes)
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def create
    list = List.create!(list_params)
    items = Item.new(item_params)
    items.list_id = list.id
    items.save!
    binding.pry
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
      params.permit(:list_title, :image_ref, :source_ref, :list_desc, :user_id)
    end

    def item_params
      binding.pry
      params.require(:item).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten)
    end
end
