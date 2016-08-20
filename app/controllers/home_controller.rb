class HomeController < ApplicationController
  layout false

  def index
  end

  def supporters
    supporter = Supporter.new(email: params[:email])

    if supporter.save
      @info = {head: 'Terima kasih!', tail: 'kamu sudah terdaftar dan mendukung kami untuk berkarya :)'}
    else
      @info = {head: 'Upss', tail: 'hanya @gmail.com, @yahoo.com dan @yahoo.co.id ya ;)'}
    end
    render :index
  end
end