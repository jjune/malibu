class ServiceController < ApplicationController
  def new
  	@services = ServiceType.all
  	@place_id = params[:id]
  end
end
