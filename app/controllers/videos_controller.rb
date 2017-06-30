class VideosController < ApplicationController

  def index
  end

  def new
    @video = Video.new
  end

  def create
    video = Video.new(permited_params)
    if video.save!
      redirect_to videos_path, status: :created
    else
      render plain: "Fail", status: :internal_server_error
    end
  end

  private

  def permited_params
    params[:video].permit(:title, :description, :url)
  end
end
