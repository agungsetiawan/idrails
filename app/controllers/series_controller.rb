class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def new
    @series = Series.new
    @levels = levels_dropdown
  end

  def create
    @series = Series.new(series_params)
    if @series.save
      redirect_to series_index_path, notice: 'All is good'
    else
      @levels = levels_dropdown
      render 'new'
    end
  end

  def show
    @series = Series.find(params[:id])
  end

  def edit
    @series = Series.find(params[:id])
    @levels = levels_dropdown
  end

  def update
    @series = Series.find(params[:id])
    if @series.update(series_params)
      redirect_to series_index_path, notice: 'All is good'
    else
      @levels = levels_dropdown
      render 'edit'
    end
  end

  def destroy
    @series = Series.find(params[:id])
    @series.delete
    redirect_to series_index_path, notice: "#{@series.title.titleize} deleted"
  end

  private
  def series_params
    params.require(:series).permit(:title, :level, :excerpt, :cover, :finish)
  end

  def levels_dropdown
    Series.levels.map do |key, _value|
      [key.titleize, key]
    end
  end
end
