class AlbumsixesController < ApplicationController
  before_action :set_albumsix, only: [:show, :edit, :update, :destroy]

  # GET /albumsixes
  # GET /albumsixes.json
  def index
    @albumsixs = Albumsix.all.order("created_at DESC")
  end

  # GET /albumsixes/1
  # GET /albumsixes/1.json
  def show
  end

  # GET /albumsixes/new
  def new
    @albumsix = Albumsix.new
  end

  # GET /albumsixes/1/edit
  def edit
  end

  # POST /albumsixes
  # POST /albumsixes.json
  def create
    @albumsix = Albumsix.new(albumsix_params)

    respond_to do |format|
      if @albumsix.save
        format.html { redirect_to @albumsix, notice: 'Albumsix was successfully created.' }
        format.json { render :show, status: :created, location: @albumsix }
      else
        format.html { render :new }
        format.json { render json: @albumsix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumsixes/1
  # PATCH/PUT /albumsixes/1.json
  def update
    respond_to do |format|
      if @albumsix.update(albumsix_params)
        format.html { redirect_to @albumsix, notice: 'Albumsix was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumsix }
      else
        format.html { render :edit }
        format.json { render json: @albumsix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumsixes/1
  # DELETE /albumsixes/1.json
  def destroy
    @albumsix.destroy
    respond_to do |format|
      format.html { redirect_to albumsixes_url, notice: 'Albumsix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @albumsix = Albumsix.find(params[:id])
    @albumsix.upvote_by current_user
    redirect_to albumsixs_path
  end
  def downvote
  @albumsix = Albumsix.find(params[:id])
  @albumsix.downvote_by current_user
  redirect_to albumsixs_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumsix
      @albumsix = Albumsix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumsix_params
      params.require(:albumsix).permit(:title, :avatar, :user_id)
    end
end
