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
    @platforma ||= Platform.find(1)
  end

  # GET /aplikaces/1/edit
  def edit

  end

  # POST /aplikaces
  # POST /aplikaces.json
  def create

    @platforma = Platform.find(platforma_params[:platform])
    @aplikace = @platforma.aplikaces.new(aplikace_params)
    @aplikace.versions.new(version: @aplikace.version)
    #@aplikace = Aplikace.new(aplikace_params.)
    respond_to do |format|
      if @platforma.save
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
      @platforma = Platform.joins(:aplikaces).where( "aplikaces.id" => @aplikace.id)
      @sel_pl = @platforma.last
      @version = Version.where(aplikace_id: @aplikace.id)
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def aplikace_params
      params.require(:aplikace).permit(:title, :description, :version)
    end

    def platforma_params
      params.require(:aplikace).permit(:platform)
    end

end
