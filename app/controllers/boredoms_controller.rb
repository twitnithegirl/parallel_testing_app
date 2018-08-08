class BoredomsController < ApplicationController
  before_action :set_boredom, only: [:show, :edit, :update, :destroy]

  # GET /boredoms
  # GET /boredoms.json
  def index
    @boredoms = Boredom.all
  end

  # GET /boredoms/1
  # GET /boredoms/1.json
  def show
  end

  # GET /boredoms/new
  def new
    @boredom = Boredom.new
  end

  # GET /boredoms/1/edit
  def edit
  end

  # POST /boredoms
  # POST /boredoms.json
  def create
    @boredom = Boredom.new(boredom_params)

    respond_to do |format|
      if @boredom.save
        format.html { redirect_to @boredom, notice: 'Boredom was successfully created.' }
        format.json { render :show, status: :created, location: @boredom }
      else
        format.html { render :new }
        format.json { render json: @boredom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boredoms/1
  # PATCH/PUT /boredoms/1.json
  def update
    respond_to do |format|
      if @boredom.update(boredom_params)
        format.html { redirect_to @boredom, notice: 'Boredom was successfully updated.' }
        format.json { render :show, status: :ok, location: @boredom }
      else
        format.html { render :edit }
        format.json { render json: @boredom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boredoms/1
  # DELETE /boredoms/1.json
  def destroy
    @boredom.destroy
    respond_to do |format|
      format.html { redirect_to boredoms_url, notice: 'Boredom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boredom
      @boredom = Boredom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boredom_params
      params.require(:boredom).permit(:name, :activity)
    end
end
