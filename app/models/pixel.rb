# == Schema Information
#
# Table name: pixels
#
#  id              :integer          not null, primary key
#  tracking_string :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Pixel < ActiveRecord::Base
	validates :tracking_string, presence: true, uniqueness: true

	after_initialize :ensure_tracking_string

	def self.generate_tracking_string
		tracking_string = SecureRandom.urlsafe_base64
		while Pixel.pluck(:tracking_string).include?(tracking_string) do
			tracking_string = SecureRandom.urlsafe_base64
		end
		tracking_string
	end

	def ensure_tracking_string
		self.tracking_string ||= Pixel.generate_tracking_string
	end
end
