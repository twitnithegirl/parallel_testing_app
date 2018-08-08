class JoysController < ApplicationController
  before_action :set_joy, only: [:show, :edit, :update, :destroy]

  # GET /joys
  # GET /joys.json
  def index
    @joys = Joy.all
  end

  # GET /joys/1
  # GET /joys/1.json
  def show
  end

  # GET /joys/new
  def new
    @joy = Joy.new
  end

  # GET /joys/1/edit
  def edit
  end

  # POST /joys
  # POST /joys.json
  def create
    @joy = Joy.new(joy_params)

    respond_to do |format|
      if @joy.save
        format.html { redirect_to @joy, notice: 'Joy was successfully created.' }
        format.json { render :show, status: :created, location: @joy }
      else
        format.html { render :new }
        format.json { render json: @joy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joys/1
  # PATCH/PUT /joys/1.json
  def update
    respond_to do |format|
      if @joy.update(joy_params)
        format.html { redirect_to @joy, notice: 'Joy was successfully updated.' }
        format.json { render :show, status: :ok, location: @joy }
      else
        format.html { render :edit }
        format.json { render json: @joy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joys/1
  # DELETE /joys/1.json
  def destroy
    @joy.destroy
    respond_to do |format|
      format.html { redirect_to joys_url, notice: 'Joy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joy
      @joy = Joy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joy_params
      params.require(:joy).permit(:name, :activity)
    end
end
