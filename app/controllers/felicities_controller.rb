class FelicitiesController < ApplicationController
  before_action :set_felicity, only: [:show, :edit, :update, :destroy]

  # GET /felicities
  # GET /felicities.json
  def index
    @felicities = Felicity.all
  end

  # GET /felicities/1
  # GET /felicities/1.json
  def show
  end

  # GET /felicities/new
  def new
    @felicity = Felicity.new
  end

  # GET /felicities/1/edit
  def edit
  end

  # POST /felicities
  # POST /felicities.json
  def create
    @felicity = Felicity.new(felicity_params)

    respond_to do |format|
      if @felicity.save
        format.html { redirect_to @felicity, notice: 'Felicity was successfully created.' }
        format.json { render :show, status: :created, location: @felicity }
      else
        format.html { render :new }
        format.json { render json: @felicity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /felicities/1
  # PATCH/PUT /felicities/1.json
  def update
    respond_to do |format|
      if @felicity.update(felicity_params)
        format.html { redirect_to @felicity, notice: 'Felicity was successfully updated.' }
        format.json { render :show, status: :ok, location: @felicity }
      else
        format.html { render :edit }
        format.json { render json: @felicity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /felicities/1
  # DELETE /felicities/1.json
  def destroy
    @felicity.destroy
    respond_to do |format|
      format.html { redirect_to felicities_url, notice: 'Felicity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_felicity
      @felicity = Felicity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def felicity_params
      params.require(:felicity).permit(:name, :activity)
    end
end
