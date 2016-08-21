class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :edit, :update, :destroy, :upvote]
respond_to :js, :json, :html
 before_action :authenticate_user!
  # GET /forums
  # GET /forums.json
  def index
    @forums = Forum.all.order("created_at DESC")
  end

  # GET /forums/1
  # GET /forums/1.json
  def show
     @comment = Comment.new


  end

  # GET /forums/new
  def new
    @forum = Forum.new
  end

  # GET /forums/1/edit
  def edit
  end

  # POST /forums
  # POST /forums.json
  def create
    @forum = Forum.new(forum_params)

    respond_to do |format|
      if @forum.save
       
        ForumMailer.forum_notification(@forum).deliver
      
        format.html { redirect_to @forum, notice: 'Forum was successfully created.' }
        format.json { render :show, status: :created, location: @forum }
      else
        format.html { render :new }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forums/1
  # PATCH/PUT /forums/1.json
  def update
    respond_to do |format|
      if @forum.update(forum_params)
        format.html { redirect_to @forum, notice: 'Forum was successfully updated.' }
        format.json { render :show, status: :ok, location: @forum }
      else
        format.html { render :edit }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forums/1
  # DELETE /forums/1.json
  def destroy
    @forum.destroy
    respond_to do |format|
      format.html { redirect_to forums_url, notice: 'Forum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @forum = Forum.find(params[:id])
    @forum.upvote_by current_user
    redirect_to forums_path
  end
  def downvote
  @forum = Forum.find(params[:id])
  @forum.downvote_by current_user
  redirect_to forums_path
end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum
      @forum = Forum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forum_params
      params.require(:forum).permit(:title, :entry, :user_id, :category, :forum_id, :avatar)
    end
end
