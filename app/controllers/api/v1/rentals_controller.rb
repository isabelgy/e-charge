class RentalsController < ActionController::Base
  def create
    @rental = rental.new(rental_params)
  end

  def update
    @rental = rental.find(params[:id])
  end

  private

  def rental_params
    params.require(:rental).permit(:in_progress)
  end
end
