class UsersController < ApplicationController
  include ActionController::MimeResponds

  def index
    scope = User.all_users
    render json: scope
  end

  def create
    @email    = params[:email]
    @address  = params[:address]
  end
end