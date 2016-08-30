class ListsController < ApplicationController
  def create
    @list = List.new(lists_params)
  if @list.save
  redirect_to @list
    else
  render :new
end

  end
  def show
    @list = List.find(params[:id])
  end
  def index
    @list = List.all
  end
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end
end
