class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def show
    @user = User.find(params[:id])
    @room_id = comment_room_id(current_user, @user)
    @comments = Comment.recent_in_room(@room_id)
  end

  def comment_room_id(first_user, second_user)
  first_id = first_user.id.to_i
  second_id = second_user.id.to_i
    if first_id < second_id
      "#{first_user.id}-#{second_user.id}"
    else
      "#{second_user.id}-#{first_user.id}"
    end
  end

  def search
    @users = User.where('postcode LIKE(?)', "%#{params[:search]}%").where.not(id: current_user)
  end

end
