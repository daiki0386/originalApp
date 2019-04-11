class UsersController < ApplicationController

  def index
  end

  def search
    @users = User.where('postcode LIKE(?)', "%#{params[:search]}%")
  end

end
