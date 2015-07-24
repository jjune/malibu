class WebsiteServicesController < ApplicationController
  before_action :set_website_service, only: [:show, :edit, :update, :destroy]

  # GET /website_services
  # GET /website_services.json
  def index
    @website_services = WebsiteService.all
  end

  # GET /website_services/1
  # GET /website_services/1.json
  def show
  end

  # GET /website_services/new
  def new
    @website_service = WebsiteService.new
    @place = Place.find_by_id(params[:place_id])
  end

  # GET /website_services/1/edit
  def edit
  end

  # POST /website_services
  # POST /website_services.json
  def create
    @website_service = WebsiteService.new(website_service_params)
    @place_service = PlaceService.new

    respond_to do |format|
      if @website_service.save

          @place_service.place_id = @website_service.place_id
          @place_service.service_type_id = 1
          @place_service.service_id = @website_service.id
          @place_service.save

        #format.html { redirect_to @website_service, notice: 'Website service was successfully created.' }
        format.html { redirect_to '/places/' + @website_service.place_id.to_s, notice: 'Service was successfully added.'}
        format.json { render :show, status: :created, location: @website_service }
      else
        format.html { render :new }
        format.json { render json: @website_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_services/1
  # PATCH/PUT /website_services/1.json
  def update
    respond_to do |format|
      if @website_service.update(website_service_params)
        format.html { redirect_to @website_service, notice: 'Website service was successfully updated.' }
        format.json { render :show, status: :ok, location: @website_service }
      else
        format.html { render :edit }
        format.json { render json: @website_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_services/1
  # DELETE /website_services/1.json
  def destroy
    @website_service.destroy
    PlaceService.delete_all("place_id = ")

    respond_to do |format|
      format.html { redirect_to website_services_url, notice: 'Website service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_service
      @website_service = WebsiteService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_service_params
      params.require(:website_service).permit(:place_id, :redirect_url, :name, :description)
    end
end
