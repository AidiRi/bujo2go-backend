class TasksController < ApplicationController

  def index
    tasks = Task.where("user_id = ?", params[:user_id])
    render json: tasks
  end

  def create
    task = Task.create(task_params)

    render json: task
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)

    render json: task
  end

	def destroy
		Task.destroy(params[:id]);
	end

  private

  def task_params
    params.require(:task).permit(:title, :status, :important, :date, :user_id, :collection_id)
    # , :authenticity_token
  end
end
