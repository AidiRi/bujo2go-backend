class NotesController < ApplicationController

  def index
    notes = Note.where("user_id = ?", params[:user_id])
    render json: notes
  end

  def create
    note = Note.create(note_params)

    render json: note
  end

  def update
    note = Note.find(params[:id])
    note.update(note_params)

    render json: note
  end

	def destroy
		Note.destroy(params[:id]);
	end

  private

  def note_params
    params.require(:note).permit(:content, :date, :user_id, :collection_id)
    # , :authenticity_token
  end
end
