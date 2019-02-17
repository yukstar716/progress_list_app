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
    @idea.save
    redirect_to ideas_path
  end

  def edit
  end

  private
    def idea_params
      params.require(:idea).permit(:title, :content)
    end

end
