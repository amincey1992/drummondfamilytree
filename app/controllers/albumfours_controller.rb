class AlbumfoursController < ApplicationController
  before_action :set_albumfour, only: [:show, :edit, :update, :destroy]

  # GET /albumfours
  # GET /albumfours.json
  def index
    @albumfours = Albumfour.all.order("created_at DESC")
  end

  # GET /albumfours/1
  # GET /albumfours/1.json
  def show
  end

  # GET /albumfours/new
  def new
    @albumfour = Albumfour.new
  end

  # GET /albumfours/1/edit
  def edit
  end

  # POST /albumfours
  # POST /albumfours.json
  def create
    @albumfour = Albumfour.new(albumfour_params)

    respond_to do |format|
      if @albumfour.save
        format.html { redirect_to @albumfour, notice: 'Albumfour was successfully created.' }
        format.json { render :show, status: :created, location: @albumfour }
      else
        format.html { render :new }
        format.json { render json: @albumfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumfours/1
  # PATCH/PUT /albumfours/1.json
  def update
    respond_to do |format|
      if @albumfour.update(albumfour_params)
        format.html { redirect_to @albumfour, notice: 'Albumfour was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumfour }
      else
        format.html { render :edit }
        format.json { render json: @albumfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumfours/1
  # DELETE /albumfours/1.json
  def destroy
    @albumfour.destroy
    respond_to do |format|
      format.html { redirect_to albumfours_url, notice: 'Albumfour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def upvote
    @albumfour = Albumfour.find(params[:id])
    @albumfour.upvote_by current_user
    redirect_to albumfours_path
  end
  def downvote
  @albumfour = Albumfour.find(params[:id])
  @albumfour.downvote_by current_user
  redirect_to albumfours_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumfour
      @albumfour = Albumfour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumfour_params
      params.require(:albumfour).permit(:title, :avatar, :user_id)
    end
end
