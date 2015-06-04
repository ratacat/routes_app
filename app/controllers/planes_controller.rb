class PlanesController < ApplicationController
	def index
		@planes = Plane.all
		render :index
	end
	def new
		render :new
	end
	def show
		id = params[:id]
		@plane = Plane.find(id)
		render :show
	end
	def create
		plane = params.require(:plane).permit(:name, :design, :description)
		plane = Plane.create(plane)
		redirect_to "/planes/#{plane.id}"
	end
end


