class FunsController < ApplicationController
  before_action :set_fun, only: [:show, :edit, :update, :destroy]

  # GET /funs
  # GET /funs.json
  def index
    @funs = Fun.all
  end

  # GET /funs/1
  # GET /funs/1.json
  def show
  end

  # GET /funs/new
  def new
    @fun = Fun.new
  end

  # GET /funs/1/edit
  def edit
  end

  # POST /funs
  # POST /funs.json
  def create
    @fun = Fun.new(fun_params)

    respond_to do |format|
      if @fun.save
        format.html { redirect_to @fun, notice: 'Fun was successfully created.' }
        format.json { render :show, status: :created, location: @fun }
      else
        format.html { render :new }
        format.json { render json: @fun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funs/1
  # PATCH/PUT /funs/1.json
  def update
    respond_to do |format|
      if @fun.update(fun_params)
        format.html { redirect_to @fun, notice: 'Fun was successfully updated.' }
        format.json { render :show, status: :ok, location: @fun }
      else
        format.html { render :edit }
        format.json { render json: @fun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funs/1
  # DELETE /funs/1.json
  def destroy
    @fun.destroy
    respond_to do |format|
      format.html { redirect_to funs_url, notice: 'Fun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fun
      @fun = Fun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fun_params
      params.require(:fun).permit(:name, :activity)
    end
end
