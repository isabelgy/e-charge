class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
  end

  def create
    @station = Station.new(station_params)
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    @station.update(station_params)
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
  end


  private

  def station_params
    params.require(:station).permit(:location, :image)
  end
end
