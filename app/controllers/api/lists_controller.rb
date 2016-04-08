class Api::ListsController < ApplicationController
  def index
    render json: List.all
  end

  def show
    render json: get_list
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def create
    list = List.create!(list_params)
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
    list.delete
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
end
