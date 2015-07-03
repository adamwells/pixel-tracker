class VisitsController < ApplicationController
	def create
		@pixel = Pixel.find_by(visit_params)
		Visit.create!(pixel_id: @pixel.id, ip_address: request.remote_ip)
		send_file 'tracking.png'
	end

	private

	def visit_params
		puts "HERE"
		print params
		params.permit(:tracking_string)
	end
end
