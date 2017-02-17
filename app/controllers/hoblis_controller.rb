class HoblisController < ApplicationController
  before_action :set_hobli, only: [:show, :edit, :update, :destroy]

  # GET /hoblis
  # GET /hoblis.json
  def index
    @hoblis = Hobli.all
  end

  # GET /hoblis/1
  # GET /hoblis/1.json
  def show
  end

  # GET /hoblis/new
  def new
    @hobli = Hobli.new
  end

  # GET /hoblis/1/edit
  def edit
  end

  # POST /hoblis
  # POST /hoblis.json
  def create
    @hobli = Hobli.new(hobli_params)

    respond_to do |format|
      if @hobli.save
        format.html { redirect_to @hobli, notice: 'Hobli was successfully created.' }
        format.json { render :show, status: :created, location: @hobli }
      else
        format.html { render :new }
        format.json { render json: @hobli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoblis/1
  # PATCH/PUT /hoblis/1.json
  def update
    respond_to do |format|
      if @hobli.update(hobli_params)
        format.html { redirect_to @hobli, notice: 'Hobli was successfully updated.' }
        format.json { render :show, status: :ok, location: @hobli }
      else
        format.html { render :edit }
        format.json { render json: @hobli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoblis/1
  # DELETE /hoblis/1.json
  def destroy
    @hobli.destroy
    respond_to do |format|
      format.html { redirect_to hoblis_url, notice: 'Hobli was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobli
      @hobli = Hobli.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hobli_params
      params.require(:hobli).permit(:name, :taluk_id)
    end
end
