class VideosController < ApplicationController

  def index
  end

  def new
  end

  def create
    video = Video.new(params[:video])
    if video.save!
      render plain: "OK", status: :created
    else
      render plain: "Fail", status: :internal_server_error
    end
  end
end
