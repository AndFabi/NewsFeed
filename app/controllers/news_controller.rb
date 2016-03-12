class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to '/'
    else
      render 'new'
    end
  end

private
  def news_params
    params.require(:news).permit(:title, :url)
  end


end
