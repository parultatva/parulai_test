class ChannelsController < ApplicationController
  def index
    @tv_shows = TvShow.all

  end

  def get_shows
    if params[:word] == ""
      @tv_shows = TvShow.all
    else
      @tv_shows = TvShow.joins(:channel).where("tv_shows.name LIKE ? OR channels.name LIKE ?", "%#{params[:word]}%","%#{params[:word]}%")
    end
  end
end
