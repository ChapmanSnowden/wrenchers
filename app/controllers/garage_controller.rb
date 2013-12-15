class GarageController < ApplicationController
  before_filter :authenticate_user!

	def index
		@bikes = current_user.bikes
		p '###'
		p @bikes
	end
end
