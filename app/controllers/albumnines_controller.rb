class AlbumninesController < ApplicationController
  before_action :set_albumnine, only: [:show, :edit, :update, :destroy]

  # GET /albumnines
  # GET /albumnines.json
  def index
    @albumnines = Albumnine.all.order("created_at DESC")
  end

  # GET /albumnines/1
  # GET /albumnines/1.json
  def show
  end

  # GET /albumnines/new
  def new
    @albumnine = Albumnine.new
  end

  # GET /albumnines/1/edit
  def edit
  end

  # POST /albumnines
  # POST /albumnines.json
  def create
    @albumnine = Albumnine.new(albumnine_params)

    respond_to do |format|
      if @albumnine.save
        format.html { redirect_to @albumnine, notice: 'Albumnine was successfully created.' }
        format.json { render :show, status: :created, location: @albumnine }
      else
        format.html { render :new }
        format.json { render json: @albumnine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumnines/1
  # PATCH/PUT /albumnines/1.json
  def update
    respond_to do |format|
      if @albumnine.update(albumnine_params)
        format.html { redirect_to @albumnine, notice: 'Albumnine was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumnine }
      else
        format.html { render :edit }
        format.json { render json: @albumnine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumnines/1
  # DELETE /albumnines/1.json
  def destroy
    @albumnine.destroy
    respond_to do |format|
      format.html { redirect_to albumnines_url, notice: 'Albumnine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @albumnine = Albumnine.find(params[:id])
    @albumnine.upvote_by current_user
    redirect_to albumnines_path
  end
  def downvote
  @albumnine = Albumnine.find(params[:id])
  @albumnine.downvote_by current_user
  redirect_to albumnines_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumnine
      @albumnine = Albumnine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumnine_params
      params.require(:albumnine).permit(:title, :avatar, :user_id)
    end
end
