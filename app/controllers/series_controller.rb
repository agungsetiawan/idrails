class SeriesController < ApplicationController
  def show
    @series = Series.find(params[:id])
  end

  def index
    @series = Series.available.paginate(per_page:8,page: params[:page])
  end
end
