class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def show
    @user = User.find(params[:id])
    @comments = Comment.all
  end

  def search
    @users = User.where('postcode LIKE(?)', "%#{params[:search]}%")
  end

end
