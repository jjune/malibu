class Place < ActiveRecord::Base


	has_many :website_services, :dependent => :destroy
	has_many :place_services, :dependent => :destroy

	
end
