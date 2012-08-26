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
      redirect_to tips_path
    else
      render 'new'
    end
  end

  def show
    @tip = Tip.find(params[:id])
  end
end
