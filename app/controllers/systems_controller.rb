class SystemsController < ApplicationController
  before_action :set_system, only: [:show, :update, :destroy]
  def index
    @systems = System.all
  end
  
  def new
    @system_codes = [
      System.new_location,
      System.new_location,
      System.new_location,
      System.new_location,
      System.new_location
    ]
  end

  def destroy
    @system.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'System was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_system
    @system = System.find(params[:id])
  end
end
