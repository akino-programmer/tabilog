class CommentsController < ApplicationController
  def create
    comment = Comment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], rate: comment_params[:rate], user_id: current_user.id)
    redirect_to "/tweets/#{comment.tweet.id}"
  end

  private
  def comment_params
    params.permit(:text, :tweet_id, :rate)
  end
end
