class RentalsController < ActionController::Base
  def create
    @rental = Rental.new(rental_params)
    @station = Station.find(@rental[:station_id])
    @rental.station = @station
    @user = User.find(params[:user_id])
    @rental.user = @user
    unless @rental.save
      render_error
    end
  end

  def update
    @rental = Rental.find(params[:id])
    unless @rental.update(rental_params)
      render_error
    end
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