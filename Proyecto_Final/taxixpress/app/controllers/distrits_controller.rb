class DistritsController < ApplicationController
  before_action :set_distrit, only: [:show, :edit, :update, :destroy]

  # GET /distrits
  # GET /distrits.json
  def index
    @distrits = Distrit.all
  end

  # GET /distrits/1
  # GET /distrits/1.json
  def show
  end

  # GET /distrits/new
  def new
    @distrit = Distrit.new
  end

  # GET /distrits/1/edit
  def edit
  end

  # POST /distrits
  # POST /distrits.json
  def create
    @distrit = Distrit.new(distrit_params)

    respond_to do |format|
      if @distrit.save
        format.html { redirect_to @distrit, notice: 'Distrit was successfully created.' }
        format.json { render :show, status: :created, location: @distrit }
      else
        format.html { render :new }
        format.json { render json: @distrit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distrits/1
  # PATCH/PUT /distrits/1.json
  def update
    respond_to do |format|
      if @distrit.update(distrit_params)
        format.html { redirect_to @distrit, notice: 'Distrit was successfully updated.' }
        format.json { render :show, status: :ok, location: @distrit }
      else
        format.html { render :edit }
        format.json { render json: @distrit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distrits/1
  # DELETE /distrits/1.json
  def destroy
    @distrit.destroy
    respond_to do |format|
      format.html { redirect_to distrits_url, notice: 'Distrit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distrit
      @distrit = Distrit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distrit_params
      params.require(:distrit).permit(:name)
    end
end
