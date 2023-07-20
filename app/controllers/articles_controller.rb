class ArticlesController < ApplicationController
  def show
    # byebug

    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to article_path(@article)
  end
end