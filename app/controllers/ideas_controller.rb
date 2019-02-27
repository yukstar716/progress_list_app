class IdeasController < ApplicationController
  # viewアクションにのみ適用されるbeforeフィルターcheck_loginedを登録
  before_action :check_logined, only: :view

  def incodex
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
    @idea = find_idea_by_id
  end

  def update
    @idea = find_idea_by_id
    if @idea.update(idea_params)
      redirect_to ideas_path
    else
      render :edit
    end
  end

  def destroy
    @idea = find_idea_by_id
    @idea.destroy
    redirect_to ideas_path
  end

  private

  def check_logined
    if session[:usr] then
      begin
        @usr = User.find(session[:usr])
        resucue ActiveRecord::RecordNotFound
        reet_session
      end
    end

    unless @usr
      flash[:referer] = request.fullpath
      redirect_to controller: :login, action: :index
    end
  end

    def idea_params
      params.require(:idea).permit(:title, :content)
    end

  def find_idea_by_id
    Idea.find(params[:id])
  end

end
