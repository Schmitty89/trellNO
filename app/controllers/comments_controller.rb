class CommentsController < ApplicationController
  def create
    # you need your save if statements still
    @comment=Comment.new(comments_params)
    if @comment.save
      redirect_to @comment
    else
      render :new
    end
  end
  def index
    @comment=Comment.all
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end
end
