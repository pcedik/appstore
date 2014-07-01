class PreviewsController < ApplicationController
  before_action :set_preview, only: [:show, :edit, :update, :destroy]

  def index
    @previews = Preview.where(preview_params)
  end

  def show
  end

  # DELETE /aplikaces/1
  # DELETE /aplikaces/1.json
  def destroy
    @preview.destroy
    respond_to do |format|
      format.html { redirect_to aplikace_previews_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
   # Use callbacks to share common setup or constraints between actions.
   def set_preview
     @preview = Preview.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def preview_params
   		params.permit(:aplikace_id)
   end
end
