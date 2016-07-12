class AlbumtwosController < ApplicationController
  before_action :set_albumtwo, only: [:show, :edit, :update, :destroy]

  # GET /albumtwos
  # GET /albumtwos.json
  def index
    @albumtwos = Albumtwo.all
  end

  # GET /albumtwos/1
  # GET /albumtwos/1.json
  def show
  end

  # GET /albumtwos/new
  def new
    @albumtwo = Albumtwo.new
  end

  # GET /albumtwos/1/edit
  def edit
  end

  # POST /albumtwos
  # POST /albumtwos.json
  def create
    @albumtwo = Albumtwo.new(albumtwo_params)

    respond_to do |format|
      if @albumtwo.save
        format.html { redirect_to @albumtwo, notice: 'Albumtwo was successfully created.' }
        format.json { render :show, status: :created, location: @albumtwo }
      else
        format.html { render :new }
        format.json { render json: @albumtwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumtwos/1
  # PATCH/PUT /albumtwos/1.json
  def update
    respond_to do |format|
      if @albumtwo.update(albumtwo_params)
        format.html { redirect_to @albumtwo, notice: 'Albumtwo was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumtwo }
      else
        format.html { render :edit }
        format.json { render json: @albumtwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumtwos/1
  # DELETE /albumtwos/1.json
  def destroy
    @albumtwo.destroy
    respond_to do |format|
      format.html { redirect_to albumtwos_url, notice: 'Albumtwo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @albumtwo = Albumtwo.find(params[:id])
    @albumtwo.upvote_by current_user
    redirect_to albumtwos_path
  end
  def downvote
  @albumtwo = Albumtwo.find(params[:id])
  @albumtwo.downvote_by current_user
  redirect_to albumtwos_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumtwo
      @albumtwo = Albumtwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumtwo_params
      params.require(:albumtwo).permit(:title, :avatar, :user_id)
    end
end
