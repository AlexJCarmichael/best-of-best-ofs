class Api::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: get_user
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def create
    user = User.create!(user_params)
    render json: user
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  end

  def update
    user = get_user
    user.update(user_params)
    user.save!
    render json: user
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Bad request, need all paramaters", status: 400 }, status: 400
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def destroy
    user = get_user
    user.destroy
    render json: user
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  private
    def get_user
      User.find(params.fetch(:id))
    end

    def user_params
      params.permit(:username, :password)
    end
end
