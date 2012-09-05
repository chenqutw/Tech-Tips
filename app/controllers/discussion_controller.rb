class DiscussionController < ApplicationController
  def index
    @discussions = Discussion.all
  end

  def new
    @discussion = Discussion.new
  end

  def show
    @discussion = Discussion.find(params[:id])
    @tip = Tip.find_by_title(@discussion.title)
  end
end
