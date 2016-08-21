class CommentSellsController < ApplicationController
  before_action :set_comment_sell, only: [:show, :edit, :update, :destroy]

before_action :authenticate_user!
  # GET /comment_sells
  # GET /comment_sells.json
  def index
    @comment_sells = CommentSell.all
  end

  # GET /comment_sells/1
  # GET /comment_sells/1.json
  def show
  end

  # GET /comment_sells/new
  def new
    @comment_sell = CommentSell.new
  end

  # GET /comment_sells/1/edit
  def edit
  end

  # POST /comment_sells
  # POST /comment_sells.json
  def create
    @comment_sell = CommentSell.new(comment_sell_params)

    respond_to do |format|
      if @comment_sell.save
        User.find_each do |user|
        CommentSellsMailer.comment_sell_notification(@comment_sell).deliver
      end
        format.html { redirect_to :back, notice: 'Comment sell was successfully created.' }
        format.json { render :show, status: :created, location: @comment_sell }
      else
        format.html { render :new }
        format.json { render json: @comment_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_sells/1
  # PATCH/PUT /comment_sells/1.json
  def update
    respond_to do |format|
      if @comment_sell.update(comment_sell_params)
        format.html { redirect_to @comment_sell, notice: 'Comment sell was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_sell }
      else
        format.html { render :edit }
        format.json { render json: @comment_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_sells/1
  # DELETE /comment_sells/1.json
  def destroy
    @comment_sell.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Comment sell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_sell
      @comment_sell = CommentSell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_sell_params
      params.require(:comment_sell).permit(:author, :comment_entry, :sell_id, :user_id, :user_name, :avatar)
    end
end
