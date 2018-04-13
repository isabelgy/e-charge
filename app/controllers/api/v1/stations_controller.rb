class Api::V1::StationsController < Api::V1::BaseController
  def index
    Station.all.each do |station|
      if station.rentals.empty?
        station.update(availability: true)
      else
        station.update(availability: !station.rentals.any?(&:in_progress))
      end
    end
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
    if @station.rentals.empty?
      @station.update(availability: true)
    else
      @station.update(availability: !@station.rentals.any?(&:in_progress))
    end
    @station
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    @station = Station.find(params[:id])
    @station.update(station_params)
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    head :no_content
  end


  private

  def render_error
    render json: { errors: @station.errors.full_messages },
      status: :unprocessable_entity
  end

  def station_params

    params.require(:station).permit(:latitude, :longitude, :image, :address, :availability)

  end
end
