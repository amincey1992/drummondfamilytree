class AlbumthreesController < ApplicationController
  before_action :set_albumthree, only: [:show, :edit, :update, :destroy]

  # GET /albumthrees
  # GET /albumthrees.json
  def index
    @albumthrees = Albumthree.all.order("created_at DESC")
  end

  # GET /albumthrees/1
  # GET /albumthrees/1.json
  def show
  end

  # GET /albumthrees/new
  def new
    @albumthree = Albumthree.new
  end

  # GET /albumthrees/1/edit
  def edit
  end

  # POST /albumthrees
  # POST /albumthrees.json
  def create
    @albumthree = Albumthree.new(albumthree_params)

    respond_to do |format|
      if @albumthree.save
         User.find_each do |user|
        AlbumthreeMailer.albumthree_notification(@albumthree).deliver
      end
        format.html { redirect_to @albumthree, notice: 'Albumthree was successfully created.' }
        format.json { render :show, status: :created, location: @albumthree }
      else
        format.html { render :new }
        format.json { render json: @albumthree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumthrees/1
  # PATCH/PUT /albumthrees/1.json
  def update
    respond_to do |format|
      if @albumthree.update(albumthree_params)
        format.html { redirect_to @albumthree, notice: 'Albumthree was successfully updated.' }
        format.json { render :show, status: :ok, location: @albumthree }
      else
        format.html { render :edit }
        format.json { render json: @albumthree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumthrees/1
  # DELETE /albumthrees/1.json
  def destroy
    @albumthree.destroy
    respond_to do |format|
      format.html { redirect_to albumthrees_url, notice: 'Albumthree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def upvote
    @albumthree = Albumthree.find(params[:id])
    @albumthree.upvote_by current_user
    redirect_to albumthrees_path
  end
  def downvote
  @albumthree = Albumthree.find(params[:id])
  @albumthree.downvote_by current_user
  redirect_to albumthree_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumthree
      @albumthree = Albumthree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albumthree_params
      params.require(:albumthree).permit(:title, :avatar, :user_id)
    end
end
