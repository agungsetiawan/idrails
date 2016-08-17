class SeriesController < ApplicationController
  def public_show
    @series = Series.find(params[:id])
  end

  def public_index
    @series = Series.all
  end
end
