class UsersController < ActionController::Base
  def create
    @user = User.new(user_params)
    unless @user.save
      render_error
    end
  end

  private

  def render_error
    render json: { errors: @rental.errors.full_messages },
      status: :unprocessable_entity
  end

  def user_params
    params.require(:rental).permit(:name)
  end
end
