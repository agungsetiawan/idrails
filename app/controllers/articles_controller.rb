class ArticlesController < ApplicationController
  def index
    @articles = Article.published
  end

  def public_show
    @article = Article.published(params[:id])
  end
end
