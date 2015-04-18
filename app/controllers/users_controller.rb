class UsersController < ApplicationController
  include ActionController::MimeResponds

  def index
    scope = User.all_users
    render json: scope
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:id, :address, :lat, :lng, :category, :price_paid)
  end
end