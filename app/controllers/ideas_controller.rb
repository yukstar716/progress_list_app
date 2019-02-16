class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
