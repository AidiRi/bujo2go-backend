class CollectionsController < ApplicationController
  def index
    collections = Collection.all
    render json: collections, include: [:tasks, :notes, :events]
  end

  # def show
  #   collection = Collection.find(params[:id])
  #
  #   render json: collection
  # end

  def create
    collection = Collection.create(collection_params)

    render json: collection
  end

  def update
    collection = Collection.find(params[:id])
    collection.update(collection_params)

    render json: collection
  end

	def destroy
		Collection.destroy(params[:id]);
	end

  private

  def collection_params
    params.require(:collection).permit(:title, :date)
    # :authenticity_token
  end
end
