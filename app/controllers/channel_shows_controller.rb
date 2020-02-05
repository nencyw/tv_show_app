class ChannelShowsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_show, only: [:add_to_favourite, :remove_from_favourite]

  
  def index
    @tv_shows = ChannelShow.includes(:channel).all
  end

  def add_to_favourite
    if current_user.present? && @tv_show.present?
      current_user.favorite(@tv_show) if current_user.present?
      redirect_to root_path
    else
      redirect_to root_path, alert: 'Something went wrong'
    end
  end

  def remove_from_favourite
    if current_user.present? && @tv_show.present?
      current_user.unfavorite(@tv_show) 
      redirect_to root_path
    else
      redirect_to root_path, alert: 'Something went wrong'
    end
  end

  private

  def set_show
    @tv_show = ChannelShow.find_by(id:params[:id])
  end
end
