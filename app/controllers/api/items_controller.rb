class Api::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: get_item
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def create
    item = Item.create!(item_params)
    render json: item
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  end

  def update
    item = get_item
    item.update(item_params)
    item.save!
    render json: item
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def destroy
    item = get_item
    item.destroy
    render json: item
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  private
    def get_item
      Item.find(params.fetch(:id))
    end

    def item_params
      params.permit(:item_title, :image_ref, :source_ref, :item_desc, :user_id)
    end
end
