class GarageController < ApplicationController
  before_filter :authenticate_user!

	def index
		@bikes = current_user.bikes
	end
end
