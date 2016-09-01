class ListsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @list = @board.lists.build(list_params)
    respond_to do |format|
  if @list.save
    format.json {render json: @list}
    else
      format.json {render json: @list.errors.full_messages}
    end
end

  end
  def show
    @list = List.find(params[:id])
  end
  def index
    @board= Board.find(params[:board_id])
    @lists = @board.lists
  end
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end
  def update
    @list = List.find(params[:id])
    respond_to do |format|
      if @list.update(list_params)
        format.json {render json: @list}
      else
        format.json {render json: @list.errors.full_messages}
      end
    end
  end
  private
  def list_params
    params.require(:list).permit(:order, :title)
  end
end
