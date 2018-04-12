class Api::V1::RentalsController < Api::V1::BaseController

  def create
    @rental = Rental.new(rental_params)
    @station = Station.find(@rental[:station_id])
    @rental.station = @station
    @station.update(availability: !@station.rentals.any?(&:in_progress))

    @user = User.find(params[:user_id])
    @rental.user = @user
    @rental.save


    render json: @rental
  end



  def show
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    @rental.update(rental_params)
      # render_error
      @station = @rental.station
    @rental.station.update(availability: !@station.rentals.any?(&:in_progress))

  end

  private

  def render_error
    render json: { errors: @rental.errors.full_messages },
      status: :unprocessable_entity
  end

  def rental_params
    params.require(:rental).permit(:in_progress, :station_id, :user_id)
  end
end
