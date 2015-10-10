class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /services
  # GET /services.json
  def index
    @rpt = params[:rpt]
    @text = ""
    #render :text => current_user.vehicle
    
    case current_user.user_type.name
      when "Cliente"
        @services = Service.where(user_id: current_user.id).order(created_at: :desc).limit(10)
      when "Operador"
        case @rpt
          when "1"
            @text = "Unassigned"
            @services = Service.where(status: "Solicitado").paginate(page: params[:page], per_page: 10)
          when "2"
            @text = "Assigned"
            @services = Service.where(status: "Asignado").paginate(page: params[:page], per_page: 10)
          when "3"
            @text = "Attended"
            @services = Service.where(status: "Atendido").paginate(page: params[:page], per_page: 10)
          when "4"
            @text = "Canceled"
            @services = Service.where(status: "Cancelado").paginate(page: params[:page], per_page: 10)
          #else
          #  @services = Service.all.paginate(page: params[:page], per_page: 10)
        end
      when "Taxista"
        #render :text => @car.id
        @services = Service.where(vehicle_id: $car).paginate(page: params[:page], per_page: 10)
        #@services = Service.all.paginate(page: params[:page], per_page: 5)
    end
  end
 
  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:user_id, :from_address_id, :to_address_id, :date_time, :payment, :passengers, :vehicle_type_id, :payment_method_id, :service_code, :rate, :experience, :status)
    end
end
