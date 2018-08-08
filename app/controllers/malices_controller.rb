class MalicesController < ApplicationController
  before_action :set_malice, only: [:show, :edit, :update, :destroy]

  # GET /malices
  # GET /malices.json
  def index
    @malices = Malice.all
  end

  # GET /malices/1
  # GET /malices/1.json
  def show
  end

  # GET /malices/new
  def new
    @malice = Malice.new
  end

  # GET /malices/1/edit
  def edit
  end

  # POST /malices
  # POST /malices.json
  def create
    @malice = Malice.new(malice_params)

    respond_to do |format|
      if @malice.save
        format.html { redirect_to @malice, notice: 'Malice was successfully created.' }
        format.json { render :show, status: :created, location: @malice }
      else
        format.html { render :new }
        format.json { render json: @malice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malices/1
  # PATCH/PUT /malices/1.json
  def update
    respond_to do |format|
      if @malice.update(malice_params)
        format.html { redirect_to @malice, notice: 'Malice was successfully updated.' }
        format.json { render :show, status: :ok, location: @malice }
      else
        format.html { render :edit }
        format.json { render json: @malice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malices/1
  # DELETE /malices/1.json
  def destroy
    @malice.destroy
    respond_to do |format|
      format.html { redirect_to malices_url, notice: 'Malice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malice
      @malice = Malice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def malice_params
      params.require(:malice).permit(:name, :activity)
    end
end
