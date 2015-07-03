class PixelsController < ApplicationController
	def new

	end

	def create
		@pixel = Pixel.create!
		redirect_to @pixel
	end

	def show
		@pixel = Pixel.find_by(pixel_params)
	end

	private

	def pixel_params
		print params
		params.permit(:tracking_string)
	end
end