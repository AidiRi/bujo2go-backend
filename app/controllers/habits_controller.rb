class HabitsController < ApplicationController

  def index
    habits = Habit.where("user_id = ?", params[:user_id])
    render json: habits
  end

  def create
    habit = Habit.create(habit_params)

    render json: habit
  end

  def update
    habit = Habit.find(params[:id])
    habit.update(habit_params)

    render json: habit
  end

	def destroy
		Habit.destroy(params[:id]);
	end

  private

  def habit_params
    params.require(:habit).permit(:title, :user_id, :length)
    # , :authenticity_token
  end
end
