class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.comments
  end

  def search
    @users = User.where('postcode LIKE(?)', "%#{params[:search]}%")
  end

end
