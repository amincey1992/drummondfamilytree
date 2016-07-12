class AlbumsevensController < ApplicationController
  before_action :set_albumseven, only: [:show, :edit, :update, :destroy]

  # GET /albumsevens
  # GET /albumsevens.json
  def index
    @albumsevens = Albumseven.all
  end

  # GET /albumsevens/1
  # GET /albumsevens/1.json
  def show
  end

  # GET /albumsevens/new
  def new
    @albumseven = Albumseven.new
  end

  # GET /albumsevens/1/edit
  def edit
  end

  # POST /albumsevens
  # POST /albumsevens.json
  def create
    @albumseven = Albumseven.new(albumseven_params)

    respond_to do |format|
      if @albumseven.save
        format.html { redirect_to @albumseven, notice: 'Albumseven was successfully created.' }
        format.json { render :show, status: :created, location: @albumseven }
      else
        format.html { render :new }
        format.json { render json: @albumseven.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumsevens/1
  # PATCH/PUT /albumsevens/1.json
  def update
    respond_to do |format|
      if @albumseven.update(albumseven_params)
        format.html { redirect_to @albumseven, notice: 'Albumseven was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumseven }
      else
        format.html { render :edit }
        format.json { render json: @albumseven.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumsevens/1
  # DELETE /albumsevens/1.json
  def destroy
    @albumseven.destroy
    respond_to do |format|
      format.html { redirect_to albumsevens_url, notice: 'Albumseven was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @albumseven = Albumseven.find(params[:id])
    @albumseven.upvote_by current_user
    redirect_to albumsevens_path
  end
  def downvote
  @albumseven = Albumseven.find(params[:id])
  @albumseven.downvote_by current_user
  redirect_to albumsevens_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumseven
      @albumseven = Albumseven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumseven_params
      params.require(:albumseven).permit(:title, :avatar, :user_id)
    end
end
