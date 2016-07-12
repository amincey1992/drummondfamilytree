class AlbumtensController < ApplicationController
  before_action :set_albumten, only: [:show, :edit, :update, :destroy]

  # GET /albumtens
  # GET /albumtens.json
  def index
    @albumtens = Albumten.all
  end

  # GET /albumtens/1
  # GET /albumtens/1.json
  def show
  end

  # GET /albumtens/new
  def new
    @albumten = Albumten.new
  end

  # GET /albumtens/1/edit
  def edit
  end

  # POST /albumtens
  # POST /albumtens.json
  def create
    @albumten = Albumten.new(albumten_params)

    respond_to do |format|
      if @albumten.save
        format.html { redirect_to @albumten, notice: 'Albumten was successfully created.' }
        format.json { render :show, status: :created, location: @albumten }
      else
        format.html { render :new }
        format.json { render json: @albumten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumtens/1
  # PATCH/PUT /albumtens/1.json
  def update
    respond_to do |format|
      if @albumten.update(albumten_params)
        format.html { redirect_to @albumten, notice: 'Albumten was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumten }
      else
        format.html { render :edit }
        format.json { render json: @albumten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumtens/1
  # DELETE /albumtens/1.json
  def destroy
    @albumten.destroy
    respond_to do |format|
      format.html { redirect_to albumtens_url, notice: 'Albumten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @albumten = Albumten.find(params[:id])
    @albumten.upvote_by current_user
    redirect_to albumsixs_path
  end
  def downvote
  @albumten = Albumten.find(params[:id])
  @albumten.downvote_by current_user
  redirect_to albumtens_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumten
      @albumten = Albumten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumten_params
      params.require(:albumten).permit(:title, :avatar, :user_id)
    end
end
