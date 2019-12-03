class ManagementController < ApplicationController

  def index
    @users = User.all
    @user_id_1_tweet = Tweet.where(user_id: '1').count
    @user_id_2_tweet = Tweet.where(user_id: '2').count
    @user_id_3_tweet = Tweet.where(user_id: '3').count
    @user_id_4_tweet = Tweet.where(user_id: '4').count
    @user_id_5_tweet = Tweet.where(user_id: '5').count
    @user_id_6_tweet = Tweet.where(user_id: '6').count


    @user_id_1_comment = Comment.where(user_id: '1').count
    @user_id_2_comment = Comment.where(user_id: '2').count
    @user_id_3_comment = Comment.where(user_id: '3').count
    @user_id_4_comment = Comment.where(user_id: '4').count
    @user_id_5_comment = Comment.where(user_id: '5').count
    @user_id_6_comment = Comment.where(user_id: '6').count

  end




end
