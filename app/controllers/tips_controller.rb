class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(params[:tip])
    if @tip.save
      create_discussion_with_tip(params[:tip][:title])
      redirect_to tips_path
    else
      render 'new'
    end
  end

  def show
    @tip = Tip.find(params[:id])
    @discussion = Discussion.find_by_title(@tip.title)
  end

  private
  def create_discussion_with_tip(title)
     discussion = Discussion.create({title: title})
  end

end
