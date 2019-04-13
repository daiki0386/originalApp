class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def search
    @users = User.where('postcode LIKE(?)', "%#{params[:search]}%")
  end

end
