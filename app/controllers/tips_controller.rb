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

  def edit
    @tip = Tip.find(params[:id])
  end

  def update
    @tip = Tip.find(params[:id])
    @discussion = Discussion.find_by_title(@tip.title)
    if @tip.update_attributes(params[:tip])
      @discussion.update_attributes({'title' => @tip.title})
      redirect_to tip_path(@tip)
    else
      render :edit
    end
  end

  def destroy
    @tip = Tip.find(params[:id])
    @discussion = Discussion.find_by_title(@tip.title)
    @tip.destroy
    @discussion.destroy
    redirect_to tips_path()
  end

  private
  def create_discussion_with_tip(title)
     discussion = Discussion.create({title: title})
  end

end
