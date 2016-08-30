class BoardsController < ApplicationController
  def create
    @board= Board.new(boards_path)
    if @board.save
      redirect_to @board
  else
    render :new
  end

  end
  def show
    @board = Board.find(params[:id])
  end
  def index
    @board = Board.all
  end
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end
end
