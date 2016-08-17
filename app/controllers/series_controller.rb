class SeriesController < ApplicationController
  def show
    @series = Series.find(params[:id])
  end

  def index
    @series = Series.available
  end
end
