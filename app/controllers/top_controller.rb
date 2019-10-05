class TopController < ApplicationController
 
  def index
    render :layout => nil
  end
  # def no_layout_action
  #   render layout: false
  # end
end
