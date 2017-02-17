class RrangesController < ApplicationController
  before_action :set_rrange, only: [:show, :edit, :update, :destroy]

  # GET /rranges
  # GET /rranges.json
  def index
    @rranges = Rrange.all
  end

  # GET /rranges/1
  # GET /rranges/1.json
  def show
  end

  # GET /rranges/new
  def new
    @rrange = Rrange.new
  end

  # GET /rranges/1/edit
  def edit
  end

  # POST /rranges
  # POST /rranges.json
  def create
    @rrange = Rrange.new(rrange_params)

    respond_to do |format|
      if @rrange.save
        format.html { redirect_to @rrange, notice: 'Rrange was successfully created.' }
        format.json { render :show, status: :created, location: @rrange }
      else
        format.html { render :new }
        format.json { render json: @rrange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rranges/1
  # PATCH/PUT /rranges/1.json
  def update
    respond_to do |format|
      if @rrange.update(rrange_params)
        format.html { redirect_to @rrange, notice: 'Rrange was successfully updated.' }
        format.json { render :show, status: :ok, location: @rrange }
      else
        format.html { render :edit }
        format.json { render json: @rrange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rranges/1
  # DELETE /rranges/1.json
  def destroy
    @rrange.destroy
    respond_to do |format|
      format.html { redirect_to rranges_url, notice: 'Rrange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rrange
      @rrange = Rrange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rrange_params
      params.require(:rrange).permit(:name, :zone_id)
    end
end
