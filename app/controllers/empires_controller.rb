class EmpiresController < ApplicationController
  before_action :set_empire, only: [:show, :edit, :update, :destroy]
  before_action :validate_session

  # GET /empires
  # GET /empires.json
  def index
    @empires = Empire.all
  end

  # GET /empires/1
  # GET /empires/1.json
  def show
  end

  # GET /empires/new
  def new
    @empire = Empire.new
  end

  # GET /empires/1/edit
  def edit
  end

  # POST /empires
  # POST /empires.json
  def create
    @empire = Empire.new(empire_params)
    @empire.user_id = session[:user_id]
    @empire.credits = 0
    @empire.industry = 0
    @empire.research = 0

    respond_to do |format|
      if @empire.save
        format.html { redirect_to @empire, notice: 'Empire was successfully created.' }
        format.json { render :show, status: :created, location: @empire }
      else
        format.html { render :new }
        format.json { render json: @empire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empires/1
  # PATCH/PUT /empires/1.json
  def update
    respond_to do |format|
      if @empire.update(empire_params)
        format.html { redirect_to @empire, notice: 'Empire was successfully updated.' }
        format.json { render :show, status: :ok, location: @empire }
      else
        format.html { render :edit }
        format.json { render json: @empire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empires/1
  # DELETE /empires/1.json
  def destroy
    @empire.destroy
    respond_to do |format|
      format.html { redirect_to empires_url, notice: 'Empire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empire
      @empire = Empire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empire_params
      params.require(:empire).permit(:empire_name, :description)
    end
end
