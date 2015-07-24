class WebsiteService < ActiveRecord::Base
	belongs_to :place
	belongs_to :place_service
end
