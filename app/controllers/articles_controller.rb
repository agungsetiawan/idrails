class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    series
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article), notice: 'All is Good'
    else
      series
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    series
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article), notice: 'All is Good'
    else
      series
      render 'edit'
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.delete
    redirect_to articles_path, notice: 'All is Good'
  end

  private
  def article_params
    params.require(:article).permit(:title, :cover, :content, :series_id)
  end

  def series
    @series = Series.all.map{|s| [s.title,s.id]}
  end
end
