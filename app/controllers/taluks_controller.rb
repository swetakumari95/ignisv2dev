class TaluksController < ApplicationController
  before_action :set_taluk, only: [:show, :edit, :update, :destroy]

  # GET /taluks
  # GET /taluks.json
  def index
    @taluks = Taluk.all
  end

  # GET /taluks/1
  # GET /taluks/1.json
  def show
  end

  # GET /taluks/new
  def new
    @taluk = Taluk.new
  end

  # GET /taluks/1/edit
  def edit
  end

  # POST /taluks
  # POST /taluks.json
  def create
    @taluk = Taluk.new(taluk_params)

    respond_to do |format|
      if @taluk.save
        format.html { redirect_to @taluk, notice: 'Taluk was successfully created.' }
        format.json { render :show, status: :created, location: @taluk }
      else
        format.html { render :new }
        format.json { render json: @taluk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taluks/1
  # PATCH/PUT /taluks/1.json
  def update
    respond_to do |format|
      if @taluk.update(taluk_params)
        format.html { redirect_to @taluk, notice: 'Taluk was successfully updated.' }
        format.json { render :show, status: :ok, location: @taluk }
      else
        format.html { render :edit }
        format.json { render json: @taluk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taluks/1
  # DELETE /taluks/1.json
  def destroy
    @taluk.destroy
    respond_to do |format|
      format.html { redirect_to taluks_url, notice: 'Taluk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taluk
      @taluk = Taluk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taluk_params
      params.require(:taluk).permit(:name, :district_id)
    end
end
