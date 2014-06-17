class AplikacesController < ApplicationController
  before_action :set_aplikace, only: [:show, :edit, :update, :destroy]

  # GET /aplikaces
  # GET /aplikaces.json
  def index
    @aplikaces = Aplikace.all
  end

  # GET /aplikaces/1
  # GET /aplikaces/1.json
  def show
  end

  # GET /aplikaces/new
  def new
    @aplikace = Aplikace.new
  end

  # GET /aplikaces/1/edit
  def edit
  end

  # POST /aplikaces
  # POST /aplikaces.json
  def create
    @aplikace = Aplikace.new(aplikace_params)

    respond_to do |format|
      if @aplikace.save
        format.html { redirect_to @aplikace, notice: 'Aplikace was successfully created.' }
        format.json { render :show, status: :created, location: @aplikace }
      else
        format.html { render :new }
        format.json { render json: @aplikace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aplikaces/1
  # PATCH/PUT /aplikaces/1.json
  def update
    respond_to do |format|
      if @aplikace.update(aplikace_params)
        format.html { redirect_to @aplikace, notice: 'Aplikace was successfully updated.' }
        format.json { render :show, status: :ok, location: @aplikace }
      else
        format.html { render :edit }
        format.json { render json: @aplikace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplikaces/1
  # DELETE /aplikaces/1.json
  def destroy
    @aplikace.destroy
    respond_to do |format|
      format.html { redirect_to aplikaces_url, notice: 'Aplikace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aplikace
      @aplikace = Aplikace.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def aplikace_params
      params.require(:aplikace).permit(:title)
    end

end