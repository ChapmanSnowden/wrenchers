class BikeController < ApplicationController
	def new
	end

	def show
		@bike = Bike.find(params[:id])
	end
end
