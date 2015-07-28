class PlaceService < ActiveRecord::Base
	
	belongs_to :place
	belongs_to :service_type
	has_many :website_services
end
