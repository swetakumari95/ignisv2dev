class FireStationsController < ApplicationController
  before_action :set_fire_station, only: [:show, :edit, :update, :destroy]

  # GET /fire_stations
  # GET /fire_stations.json
  def index
    @fire_stations = FireStation.all
  end

  # GET /fire_stations/1
  # GET /fire_stations/1.json
  def show
  end

  # GET /fire_stations/new
  def new
    @fire_station = FireStation.new
  end

  # GET /fire_stations/1/edit
  def edit
  end

  # POST /fire_stations
  # POST /fire_stations.json
  def create
    @fire_station = FireStation.new(fire_station_params)

    respond_to do |format|
      if @fire_station.save
        format.html { redirect_to @fire_station, notice: 'Fire station was successfully created.' }
        format.json { render :show, status: :created, location: @fire_station }
      else
        format.html { render :new }
        format.json { render json: @fire_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fire_stations/1
  # PATCH/PUT /fire_stations/1.json
  def update
    respond_to do |format|
      if @fire_station.update(fire_station_params)
        format.html { redirect_to @fire_station, notice: 'Fire station was successfully updated.' }
        format.json { render :show, status: :ok, location: @fire_station }
      else
        format.html { render :edit }
        format.json { render json: @fire_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fire_stations/1
  # DELETE /fire_stations/1.json
  def destroy
    @fire_station.destroy
    respond_to do |format|
      format.html { redirect_to fire_stations_url, notice: 'Fire station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fire_station
      @fire_station = FireStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fire_station_params
      params.require(:fire_station).permit(:name, :sanction_number, :address, :longitude, :latitude, :phone_number, :land_area, :fs_class, :establishment_date, :establishment_cost, :sanctioned_strength, :actual_strength, :taluk_bit, :status)
    end
end
