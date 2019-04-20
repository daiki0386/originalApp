class CommentsController < ApplicationController

  def index
    @allcomments = Comment.where(to_id: current_user).or(Comment.where(from_id: current_user))
  end

  def create
    Comment.create!(comment_params)
    redirect_to :back
  end

  private
  def comment_params
    params.permit(:text, :from_id, :to_id, :room_id,:user_id)
  end

end
