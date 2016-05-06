class WhipsController < ApplicationController
  before_action :set_whip, only: [:show, :edit, :update, :destroy]

  # GET /whips
  # GET /whips.json
  def index
    @whips = Whip.all
  end

  # GET /whips/1
  # GET /whips/1.json
  def show
  end

  # GET /whips/new
  def new
    @whip = Whip.new
  end

  # GET /whips/1/edit
  def edit
  end

  # POST /whips
  # POST /whips.json
  def create
    @whip = Whip.new(whip_params)

    respond_to do |format|
      if @whip.save
        format.html { redirect_to @whip, notice: 'Whip was successfully created.' }
        format.json { render :show, status: :created, location: @whip }
      else
        format.html { render :new }
        format.json { render json: @whip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whips/1
  # PATCH/PUT /whips/1.json
  def update
    respond_to do |format|
      if @whip.update(whip_params)
        format.html { redirect_to @whip, notice: 'Whip was successfully updated.' }
        format.json { render :show, status: :ok, location: @whip }
      else
        format.html { render :edit }
        format.json { render json: @whip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whips/1
  # DELETE /whips/1.json
  def destroy
    @whip.destroy
    respond_to do |format|
      format.html { redirect_to whips_url, notice: 'Whip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whip
      @whip = Whip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whip_params
      params.require(:whip).permit(:name, :email, :model, :year, :mods, :avatar)
    end
end
