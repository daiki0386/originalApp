class CommentsController < ApplicationController

  def index
    @receive = Comment.where(to_id: current_user)
    @send = Comment.where(from_id: current_user)
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
