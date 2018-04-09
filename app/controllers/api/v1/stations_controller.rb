class StationsController < ActionController::Base
  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      render :show, status: :created
    else
      render_error
    end
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    if @station.update(station_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
  end


  private

  def render_error
    render json: { errors: @station.errors.full_messages },
      status: :unprocessable_entity
  end

  def station_params
    params.require(:station).permit(:location, :image)
  end
end
