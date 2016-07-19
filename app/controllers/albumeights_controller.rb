class AlbumeightsController < ApplicationController
  before_action :set_albumeight, only: [:show, :edit, :update, :destroy]

  # GET /albumeights
  # GET /albumeights.json
  def index
    @albumeights = Albumeight.all.order("created_at DESC")
  end

  # GET /albumeights/1
  # GET /albumeights/1.json
  def show
  end

  # GET /albumeights/new
  def new
    @albumeight = Albumeight.new
  end

  # GET /albumeights/1/edit
  def edit
  end

  # POST /albumeights
  # POST /albumeights.json
  def create
    @albumeight = Albumeight.new(albumeight_params)

    respond_to do |format|
      if @albumeight.save
        format.html { redirect_to @albumeight, notice: 'Albumeight was successfully created.' }
        format.json { render :show, status: :created, location: @albumeight }
      else
        format.html { render :new }
        format.json { render json: @albumeight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumeights/1
  # PATCH/PUT /albumeights/1.json
  def update
    respond_to do |format|
      if @albumeight.update(albumeight_params)
        format.html { redirect_to @albumeight, notice: 'Albumeight was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumeight }
      else
        format.html { render :edit }
        format.json { render json: @albumeight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumeights/1
  # DELETE /albumeights/1.json
  def destroy
    @albumeight.destroy
    respond_to do |format|
      format.html { redirect_to albumeights_url, notice: 'Albumeight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @albumeight = Albumeight.find(params[:id])
    @albumeight.upvote_by current_user
    redirect_to albumeights_path
  end
  def downvote
  @albumeight = Albumeight.find(params[:id])
  @albumeight.downvote_by current_user
  redirect_to albumeights_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumeight
      @albumeight = Albumeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumeight_params
      params.require(:albumeight).permit(:title, :avatar, :user_id)
    end
end
