class ArticlesController < ApplicationController
  def index
    @articles = Article.published
  end

  def show
    @article = Article.published(params[:id])
  end
end
