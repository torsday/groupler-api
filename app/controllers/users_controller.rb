class UsersController < ApplicationController
  include ActionController::MimeResponds

  def index
    scope = User.all_users
    render json: scope
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:id, :email, :address, :lat, :lng, :category, :price_paid)
  end
end