class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])

    render json: user, include: [:tasks, :notes, :events, :habits]
  end

  def create
    user = User.create(user_params)

    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)

    render json: user
  end

	def destroy
		User.destroy(params[:id]);
	end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
    # , :authenticity_token
  end
end
