class AlbumonesController < ApplicationController
  before_action :set_albumone, only: [:show, :edit, :update, :destroy]

  # GET /albumones
  # GET /albumones.json
  def index
    @albumones = Albumone.all
  end

  # GET /albumones/1
  # GET /albumones/1.json
  def show
  end

  # GET /albumones/new
  def new
    @albumone = Albumone.new
  end

  # GET /albumones/1/edit
  def edit
  end

  # POST /albumones
  # POST /albumones.json
  def create
    @albumone = Albumone.new(albumone_params)

    respond_to do |format|
      if @albumone.save
        format.html { redirect_to @albumone, notice: 'Albumone was successfully created.' }
        format.json { render :show, status: :created, location: @albumone }
      else
        format.html { render :new }
        format.json { render json: @albumone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumones/1
  # PATCH/PUT /albumones/1.json
  def update
    respond_to do |format|
      if @albumone.update(albumone_params)
        format.html { redirect_to @albumone, notice: 'Albumone was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumone }
      else
        format.html { render :edit }
        format.json { render json: @albumone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumones/1
  # DELETE /albumones/1.json
  def destroy
    @albumone.destroy
    respond_to do |format|
      format.html { redirect_to albumones_url, notice: 'Albumone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @albumone = Albumone.find(params[:id])
    @albumone.upvote_by current_user
    redirect_to albumones_path
  end
  def downvote
  @albumone = Albumone.find(params[:id])
  @albumone.downvote_by current_user
  redirect_to albumones_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumone
      @albumone = Albumone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumone_params
      params.require(:albumone).permit(:title, :avatar, :user_id)
    end
end
