class PixelsController < ApplicationController
	def new

	end

	def create
		if pixel_params[:tracking_string]
			@pixel = Pixel.find_by(tracking_string: pixel_params[:tracking_string])
		else
			@pixel = Pixel.create!
		end
		redirect_to @pixel
	end

	def show
		@pixel = Pixel.find_by(pixel_params)
		@visits = Visit.where(pixel_id: @pixel.id)
	end

	private

	def pixel_params
		params.permit(:tracking_string, :id)
	end
end