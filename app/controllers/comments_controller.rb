class CommentsController < ApplicationController
  def create
    Comment.create(text: params[:text], user_id: current_user.id)
    redirect_to :back
  end
end
