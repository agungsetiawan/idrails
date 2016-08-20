class ArticlesController < ApplicationController
  def index
    @articles = Article.published.paginate(per_page:5, page: params[:page])
  end

  def show
    @article = Article.published(params[:id])
  end
end
