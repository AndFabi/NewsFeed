class ReviewsController < ApplicationController

  before_action :find_news, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = @news.reviews.create(params_review)
    if @review.save
      redirect_to '/'
    else
      render 'new'
    end

  end

private
  def find_news
    @news = News.find(params[:news_id])
  end

  def params_review
    params.require(:review).permit(:content)
  end

end

