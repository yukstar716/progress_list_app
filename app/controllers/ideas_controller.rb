class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def show
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to ideas_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :new
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  private
    def idea_params
      params.require(:idea).permit(:title, :content)
    end

end
