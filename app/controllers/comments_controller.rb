class CommentsController < ApplicationController
  def create
    @card = Card.find(params[:card_id])
    @comment= @card.comments.build(comm_params)
    respond_to do |format|
    if @comment.save
      format.json {render json: @comment}
    else
      format.json {render json: @comment.errors.full_messages}
    end
   end
  end
  def index
    @card = Card.find(params[:card_id])
    @comments=@card.comments
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end
  private
  def comm_params
    params.require(:comment).permit(:commenter, :body)

  end
end
