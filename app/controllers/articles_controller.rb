class ArticlesController < ApplicationController
  def public_show
    @article = Article.published(params[:id])
  end
end
