class ArticlesController < ApplicationController
  def public_show
    @article = Article.find(params[:id])
  end
end
