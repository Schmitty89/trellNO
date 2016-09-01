class BoardsController < ApplicationController
  def new
    @board =Board.new
  end
  def create
    @board= Board.new(rest_params)
    if @board.save
      format.json {render json: @board}
  else
    format.json {render json: @board.errors.full_messages}
  end

  end
  def show
    @board = Board.find(params[:id])
  end
  def index
    @boards = Board.all
  end
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end

  private
  def rest_params
    params.require(:board).permit(:project)
  end
end
