module ApplicationHelper

	def get_service_name(service_id, service_type_id)
	
		@service_type = ServiceType.find_by_id(service_type_id)
		@service_detail = WebsiteService.find(service_id)
		@service_detail.name

	end 

end
