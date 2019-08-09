class EventsController < ApplicationController

  def index
    events = Event.where("user_id = ?", params[:user_id])
    render json: events
  end

  def create
    event = Event.create(event_params)

    render json: event
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)

    render json: event
  end

	def destroy
		Event.destroy(params[:id]);
	end

  private

  def event_params
    params.require(:event).permit(:title, :status, :duration, :hour, :datetime, :collection_id, :user_id)
    # , :authenticity_token
  end

end
