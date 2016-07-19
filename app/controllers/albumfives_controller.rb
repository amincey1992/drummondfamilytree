class AlbumfivesController < ApplicationController
  before_action :set_albumfife, only: [:show, :edit, :update, :destroy]

  # GET /albumfives
  # GET /albumfives.json
  def index
    @albumfives = Albumfive.all.order("created_at DESC")
  end

  # GET /albumfives/1
  # GET /albumfives/1.json
  def show
  end

  # GET /albumfives/new
  def new
    @albumfife = Albumfive.new
  end

  # GET /albumfives/1/edit
  def edit
  end

  # POST /albumfives
  # POST /albumfives.json
  def create
    @albumfife = Albumfive.new(albumfife_params)

    respond_to do |format|
      if @albumfife.save
        format.html { redirect_to @albumfife, notice: 'Albumfive was successfully created.' }
        format.json { render :show, status: :created, location: @albumfife }
      else
        format.html { render :new }
        format.json { render json: @albumfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumfives/1
  # PATCH/PUT /albumfives/1.json
  def update
    respond_to do |format|
      if @albumfife.update(albumfife_params)
        format.html { redirect_to @albumfife, notice: 'Albumfive was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumfife }
      else
        format.html { render :edit }
        format.json { render json: @albumfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumfives/1
  # DELETE /albumfives/1.json
  def destroy
    @albumfife.destroy
    respond_to do |format|
      format.html { redirect_to albumfives_url, notice: 'Albumfive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumfife
      @albumfife = Albumfive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumfife_params
      params.require(:albumfife).permit(:title)
    end
end
